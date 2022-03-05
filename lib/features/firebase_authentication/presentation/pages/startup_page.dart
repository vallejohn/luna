import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/router/app_router.dart';
import '../blocs/auth_check/auth_check_bloc.dart';
import '../blocs/user_profile/user_profile_bloc.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCheckBloc, AuthCheckState>(
      listener: (context, state){
        state.maybeWhen(
            authenticated: (param) {
              context.read<UserProfileBloc>().add(UserProfileEvent.userUpdate(param: param));
              AutoRouter.of(context).replace(const PostsRoute());
            },
            unAuthenticated: () {
              AutoRouter.of(context).replace(const LoginRoute());
            },
            orElse: () => null,);
      },
      builder: (context, state){
        return state.maybeWhen(
            error: (message){
              return Center(child: Text('Error'),);
              },
            loading: (){
              return Center(child: CircularProgressIndicator(),);
            },
            orElse: () => Container());
      },
    );
  }
}
