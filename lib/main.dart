import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/bloc_observer.dart';
import 'package:luna/features/firebase_authentication/presentation/blocs/auth_check/auth_check_bloc.dart';
import 'package:luna/features/firebase_authentication/presentation/blocs/login/login_bloc.dart';
import 'package:luna/features/firebase_authentication/presentation/views/auth_check_view.dart';
import 'package:luna/locator.dart';
import 'package:statusbarz/statusbarz.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  setupLocator();
  BlocOverrides.runZoned(() => runApp(MyApp()),
      blocObserver: AppBlocObserver());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCheckBloc>(
          create: (context) => AuthCheckBloc()..add(AuthCheckEvent.started()),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc()..add(LoginEvent.started()),
        ),
      ],
      child: StatusbarzCapturer(
        child: Builder(builder: (context) {
          return MaterialApp(
            navigatorObservers: [Statusbarz.instance.observer],
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Rubik',
              primarySwatch: Colors.blue,
            ),
            home: const AuthCheckView(),
          );
        }),
      ),
    );
  }
}
