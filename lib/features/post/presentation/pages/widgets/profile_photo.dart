import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:luna/features/firebase_authentication/presentation/blocs/auth_check/auth_check_bloc.dart';
import 'package:luna/router/app_router.dart';

import '../../../../../core/utils/app_logger.dart';
import '../../../../../global/styles.dart';
import '../../../../../global/ui_helpers.dart';
import '../../../../firebase_authentication/data/models/user_profile.dart';
import '../../../../firebase_authentication/presentation/blocs/user_profile/user_profile_bloc.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var log = AppLogger('ProfilePhoto');

    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        state.whenOrNull(unAuthenticated: () => AutoRouter.of(context).push(const LoginRoute()));
      },
      child: BlocBuilder<UserProfileBloc, UserProfileState>(
        builder: (context, state) {
          return Container();
          return state.maybeWhen(
              orElse: () => Container(),
              withData: (param) =>
                  StreamBuilder<UserProfile>(
                    builder: (context, AsyncSnapshot<UserProfile> snapshot) {
                      if (snapshot.hasError) {
                        log.e('Snapshot error');
                        return Container();
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        log.w('Snapshot waiting');
                        return Container();
                      }
                      UserProfile profile = UserProfile.fromJson(snapshot.data!.toJson());
                      log.i('Snapshot success!');
                      return Padding(
                        padding: EdgeInsets.only(right: horizontalMargin),
                        child: GestureDetector(
                          onTap: () => AutoRouter.of(context).push(const ProfileRoute()), // goto profile,
                          onLongPress: () => context.read<AuthCheckBloc>().add(AuthCheckEvent.signOut()), // sign out,
                          child: CircleAvatar(
                            backgroundColor: AppColors.background,
                            backgroundImage: CachedNetworkImageProvider(profile.profileImageURL),
                          ),
                        ),
                      );
                    },
                  ));
        },
      ),
    );
  }
}
