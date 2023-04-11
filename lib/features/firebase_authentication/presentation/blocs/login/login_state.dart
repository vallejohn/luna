part of 'login_bloc.dart';

enum LoginStatus{initial, loading, success, failed}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    Account? account,
    @Default('') String message,
    @Default(LoginError.unknown) LoginError loginError,
  }) = _LoginState;
}
