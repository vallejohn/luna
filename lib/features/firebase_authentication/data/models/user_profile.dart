import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
abstract class UserProfile with _$UserProfile{
  factory UserProfile({
    String? authID,
    @Default('') String profileImageURL,
    String? username,
    String? email,
    String? firstname,
    String? lastname,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}