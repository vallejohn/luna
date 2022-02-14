// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      authID: json['authID'] as String?,
      profileImageURL: json['profileImageURL'] as String? ?? '',
      username: json['username'] as String?,
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'authID': instance.authID,
      'profileImageURL': instance.profileImageURL,
      'username': instance.username,
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };
