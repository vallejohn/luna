import 'package:authentication_module/authentication_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';
import 'package:luna/bloc_observer.dart';
import 'package:luna/bloc_providers.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/locator.dart';
import 'package:luna/router/app_router.dart';

void main() async {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    )
  );

  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

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
      child: Builder(builder: (context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: Text('sample'),),
            body: Center(
              child: StreamBuilder(
                stream: GetIt.instance<AuthenticationModule>().authStatus,
                builder: (BuildContext context, AsyncSnapshot<AuthStatus> snapshot) {
                  if(snapshot.data != null){
                    if(snapshot.data == AuthStatus.unauthenticated) {
                      return Text('Not authenticated');
                    }else if(snapshot.data == AuthStatus.authenticated) {
                      return Text('Authenticated');
                    }else{
                      return Text('Ewan');
                    }
                  }else{
                    return Text('Something went wrong');
                  }
                },
              ),
            ),
          ),
        );
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
    );
  }
}
