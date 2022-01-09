import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState{
  const factory AuthState.authenticated({required UserProfileModel data}) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
}