part of 'register_bloc.dart';

enum RegisterStatus{initial, loading, success, failed}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(RegisterStatus.initial) RegisterStatus status,
    Account? account,
    @Default('') String message,
    @Default(RegisterError.unknown) RegisterError registerError,
  }) = _RegisterState;
}
