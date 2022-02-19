part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.success({required Stream<UserProfile> profileStream}) = _Success;
}
