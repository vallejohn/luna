import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/signin_with_email_and_password.dart';

import '../../../../../core/utils/app_logger.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final _signInWithUsernameAndPassword = GetIt.instance<SignInWithEmailAndPassword>();

  var log = AppLogger('LoginBloc');

  LoginBloc() : super(LoginState.initial()) {
    on<_SignInWithEmailAndPassword>(_onSignInWithEmailAndPassword);
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<LoginState> emit) {
  }

  FutureOr<void> _onSignInWithEmailAndPassword(_SignInWithEmailAndPassword event, Emitter<LoginState> emit) async{
    emit(LoginState.loggingIn());

    final failureOrDataState = await _signInWithUsernameAndPassword(event.emailAndPassword);

    failureOrDataState.fold((failure){
      emit(LoginState.failed(message: failure.message));
      log.e('Login failure: ${failure.message}');
    }, (dataState){
      dataState.when(
          success: (data){
            emit(LoginState.success(param: data));
            log.i('Login success!}');
          }, failed: (loginError){
            LoginError error = loginError;
            String errorMessage = AuthError.getStringMessageFromErrorCode(error);
            log.w('Login failed: $errorMessage');

            if(AuthError.isEmailError(error)){
              emit(LoginState.emailFailure(message: errorMessage));
            }else{
              emit(LoginState.passwordFailure(message: errorMessage));
            }
      });
    });
  }
}
