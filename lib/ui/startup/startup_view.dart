import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/app/bloc/authentication_bloc.dart';
//import 'package:luna/global/styles.dart';
import 'package:luna/ui/auth/login/login_view.dart';
import 'package:luna/ui/home/home_view.dart';
//import 'package:luna/ui/startup/startup_viewmodel.dart';
import 'package:luna/ui/startup/widgets/loading_view.dart';
//import 'package:stacked/stacked.dart';
//import 'package:stacked_services/stacked_services.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state){
        return state.when(initial: () => LoadingView(),
          authenticated: () => HomeView(), 
          unAuthenticated: () => LoginView()
        );
    });

  /*   return ViewModelBuilder<StartupViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
          backgroundColor: lBackgroundColor,
          body: SafeArea(
            child: Center(child: CircularProgressIndicator())
          ),
        ),
      viewModelBuilder: () => StartupViewModel(),
      onModelReady: (model) => model.initStartupView(),
    ); */
  }
}
