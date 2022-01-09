part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loggingIn() = _LoggingIn;
  const factory LoginState.success({required UserProfileModel userProfileModel}) = _Success;
  const factory LoginState.incorrectEmail({required String message}) = _IncorrectEmail;
  const factory LoginState.incorrectPassword({required String message}) = _IncorrectPassword;
  const factory LoginState.failed({required String message}) = _Failed;
}
