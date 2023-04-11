import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/utils/app_logger.dart';

class AppBlocObserver extends BlocObserver {

  Logger logger = AppLogger('AppBlocObserver');

  @override
  void onEvent(Bloc bloc, Object? event) {
    logger.d('onEvent -- ${bloc.runtimeType}');
    super.onEvent(bloc, event);
    // TODO: implement onEvent
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stacktrace) {
    logger.e('onError -- ${bloc.runtimeType}');
    super.onError(bloc, error, stacktrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    logger.d('onChange -- ${bloc.runtimeType} => $change');
    super.onChange(bloc, change);
    // TODO: implement onChange
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    logger.d('onChange -- ${bloc.runtimeType}');
    super.onTransition(bloc, transition);
    // TODO: implement onChange
  }
}