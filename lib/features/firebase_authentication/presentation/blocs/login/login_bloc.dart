import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/models/account.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/signin_with_email_and_password.dart';

import '../../../../../core/utils/app_logger.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final _signInWithUsernameAndPassword = GetIt.instance<SignInWithEmailAndPassword>();

  var log = AppLogger('LoginBloc');

  LoginBloc() : super(LoginState()) {
    on<_SignInWithEmailAndPassword>(_onSignInWithEmailAndPassword);
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<LoginState> emit) {
  }

  FutureOr<void> _onSignInWithEmailAndPassword(_SignInWithEmailAndPassword event, Emitter<LoginState> emit) async{
    emit(state.copyWith(status: LoginStatus.loading));

    final failureOrDataState = await _signInWithUsernameAndPassword(event.emailAndPassword);

    failureOrDataState.fold((failure){
      emit(state.copyWith(
        status: LoginStatus.failed,
        loginError: failure.when(
          firebase: (firebase) => AuthError.getLoginErrorFromCode(
            firebase.code,
          ),
        ),
        message: failure.when(
          firebase: (firebase) => firebase.message!,
        ),
      ));
    }, (account){
      emit(state.copyWith(
        status: LoginStatus.success,
        account: account,
      ));
    });
  }
}
