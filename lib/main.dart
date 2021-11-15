import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/app/bloc/authentication_bloc.dart';
import 'package:luna/bloc_observer.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:luna/ui/home/bloc/home_bloc.dart';
import 'package:luna/ui/post/bloc/post_bloc.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statusbarz/statusbarz.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = AppBlocObserver();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (context) => AuthenticationBloc()..add(AuthenticationEvent.startup()),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(
            userProfileService: locator<UserProfileService>(),
            firestoreService: locator<FirestoreService>()
          )..add(HomeEvent.started()),
        ),
        BlocProvider<PostBloc>(create: (context) => PostBloc(
          userProfileService: locator<UserProfileService>()
        )..add(PostEvent.started())),
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
            navigatorKey: StackedService.navigatorKey,
            onGenerateRoute: StackedRouter().onGenerateRoute,
          );
        }),
      ),
    );
  }
}
