import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState{
  const factory AuthState.authenticated({required UserProfile data}) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
}