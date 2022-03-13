part of 'auth_check_bloc.dart';

@freezed
class AuthCheckState with _$AuthCheckState {
  const factory AuthCheckState.loading() = _Loading;
  const factory AuthCheckState.authenticated({required UserProfileParam param}) = _Authenticated;
  const factory AuthCheckState.unAuthenticated() = _UnAuthenticated;
  const factory AuthCheckState.loggedOut() = _LoggedOut;
  const factory AuthCheckState.error({required String message}) = _Error;
}
