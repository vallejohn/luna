import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/utils/app_logger.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/get_active_user.dart';

import '../../../domain/usecases/sign_out.dart';


part 'auth_check_event.dart';
part 'auth_check_state.dart';
part 'auth_check_bloc.freezed.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final _getActiveUser = GetIt.instance<GetActiveUser>();
  final _signOut = GetIt.instance<SignOut>();

  var log = AppLogger('AuthCheckBloc');

  AuthCheckBloc() : super(AuthCheckState.loading()) {
    on<_Started>(_onStarted);
    on<_SignOut>(_onSignOut);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<AuthCheckState> emit) async {
    final failureOrAuthState = await _getActiveUser();

    failureOrAuthState.fold((failure) {
      emit(AuthCheckState.error(message: failure.message));
      log.e('AuthCheck failure: ${failure.message}');
    }, (authState) {
      authState.when(
          authenticated: (param) {
            emit(AuthCheckState.authenticated(param: param));
            log.i('Authenticated: ${param.user.email.toString()}');
          },
          unAuthenticated: () {
            emit(AuthCheckState.unAuthenticated());
            log.w('Unauthenticated');
          });
    });
  }

  FutureOr<void> _onSignOut(_SignOut event, Emitter<AuthCheckState> emit) async{
    final failureOrSuccess = await _signOut();

    failureOrSuccess.fold((failure){
      log.e('Failed to logout');
    }, (_){
      emit(AuthCheckState.unAuthenticated());
    });
  }
}
