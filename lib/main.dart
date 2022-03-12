import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/bloc_observer.dart';
import 'package:luna/bloc_providers.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/locator.dart';
import 'package:luna/router/app_router.dart';
import 'package:statusbarz/statusbarz.dart';

void main() async {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    )
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  setupLocator();
  BlocOverrides.runZoned(() => runApp(Luna()),
      blocObserver: AppBlocObserver());
}

class Luna extends StatelessWidget {

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.get(),
      child: StatusbarzCapturer(
        child: Builder(builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Luna',
            theme: ThemeData(
              fontFamily: 'Rubik',
              primarySwatch: AppColors.primary,
            ),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        }),
      ),
    );
  }
}
