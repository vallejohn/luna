import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luna/core/utils/params.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState{
  const factory AuthState.authenticated({required UserProfileParam data}) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
}