import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:luna/router/app_router.dart';

import '../../../../../global/styles.dart';
import '../../../../../global/ui_helpers.dart';
import '../../../../firebase_authentication/data/models/user_profile.dart';
import '../../../../firebase_authentication/presentation/blocs/user_profile/user_profile_bloc.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            withData: (param) => StreamBuilder<UserProfile>(
              stream: param.userStream,
              builder: (context, AsyncSnapshot<UserProfile> snapshot) {
                if(snapshot.hasError){
                  Logger().e('Snapshot error');
                  return Container();
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  Logger().w('Snapshot waiting');
                  return Container();
                }
                UserProfile profile = UserProfile.fromJson(snapshot.data!.toJson());
                Logger().i('Snapshot success!');
                return Padding(
                  padding: EdgeInsets.only(right: horizontalMargin),
                  child: GestureDetector(
                    onTap: () => AutoRouter.of(context).push(const ProfileRoute()), // goto profile,
                    onLongPress: () {}, // sign out,
                    child: CircleAvatar(
                      backgroundColor: AppColors.background,
                      backgroundImage: NetworkImage(profile.profileImageURL),
                    ),
                  ),
                );
              },
            ));
      },
    );
  }
}
