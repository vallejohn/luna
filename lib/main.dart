import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/bloc_observer.dart';
import 'package:luna/features/firebase_authentication/presentation/blocs/auth_check/auth_check_bloc.dart';
import 'package:luna/features/firebase_authentication/presentation/blocs/login/login_bloc.dart';
import 'package:luna/locator.dart';
import 'package:luna/router/app_router.dart';
import 'package:statusbarz/statusbarz.dart';

import 'features/post/presentation/blocs/posts/posts_bloc.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  setupLocator();
  BlocOverrides.runZoned(() => runApp(MyApp()),
      blocObserver: AppBlocObserver());
}

class MyApp extends StatelessWidget {

  final _appRouter = AppRouter();

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
        BlocProvider<PostsBloc>(
          create: (context) => PostsBloc()..add(PostsEvent.started()),
        ),
      ],
      child: StatusbarzCapturer(
        child: Builder(builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Rubik',
              primarySwatch: Colors.blue,
            ),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        }),
      ),
    );
  }
}
