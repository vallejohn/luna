part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loggingIn() = _LoggingIn;
  const factory LoginState.success() = _Success;
  const factory LoginState.emailFailure({required String message}) = _EmailFailure;
  const factory LoginState.passwordFailure({required String message}) = _PasswordFailure;
  const factory LoginState.failed({required String message}) = _Failed;
}
