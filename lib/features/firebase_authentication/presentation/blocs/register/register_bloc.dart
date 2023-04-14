
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:luna/core/utils/params.dart';

import '../../../../../core/utils/enums.dart';
import '../../../../../core/utils/errors.dart';
import '../../../data/models/account.dart';
import '../../../domain/usecases/signup_with_email_and_password.dart';

part 'register_event.dart';
part 'register_bloc.freezed.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {

  final _signUpWithUsernameAndPassword = GetIt.instance<SignUpWithEmailAndPassword>();

  RegisterBloc() : super(RegisterState()) {
    on<_SignUpWithEmailAndPassword>(_onSignUpWithEmailAndPassword);
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<RegisterState> emit) {
  }

  FutureOr<void> _onSignUpWithEmailAndPassword(_SignUpWithEmailAndPassword event, Emitter<RegisterState> emit) async{
    emit(state.copyWith(status: RegisterStatus.loading));

    final failureOrDataState = await _signUpWithUsernameAndPassword(event.credentials);

    failureOrDataState.fold((failure){
      emit(state.copyWith(
        status: RegisterStatus.failed,
        registerError: failure.when(
          firebase: (firebase) => AuthError.getRegistrationErrorFromCode(
            firebase.code,
          ),
        ),
        message: failure.when(
          firebase: (firebase) => firebase.message!,
        ),
      ));
    }, (account){
      emit(state.copyWith(
        status: RegisterStatus.success,
        account: account,
      ));
    });
  }
}
