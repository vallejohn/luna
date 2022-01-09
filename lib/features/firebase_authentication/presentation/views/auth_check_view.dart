import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/features/firebase_authentication/presentation/blocs/auth_check/auth_check_bloc.dart';
import 'package:luna/features/firebase_authentication/presentation/views/login_view.dart';
import 'package:luna/features/firebase_authentication/presentation/views/widgets/error_view_widget.dart';
import 'package:luna/features/firebase_authentication/presentation/views/widgets/loading_widget.dart';

class AuthCheckView extends StatelessWidget {
  const AuthCheckView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state){
        state.maybeWhen(
            authenticated: (data) {
              final snackBar = SnackBar(
                content: Text('Hello ${data.firstname}'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            unAuthenticated: () {
              Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => LoginView()));
            },
            error: (message) {
              Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => ErrorViewWidget()));
            },
            orElse:() => null);
      },
      child: LoadingWidget(),
    );
  }
}
