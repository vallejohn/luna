// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String? get authID => throw _privateConstructorUsedError;
  String get profileImageURL => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {String? authID,
      String profileImageURL,
      String? username,
      String? email,
      String? firstname,
      String? lastname});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object? authID = freezed,
    Object? profileImageURL = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
  }) {
    return _then(_value.copyWith(
      authID: authID == freezed
          ? _value.authID
          : authID // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? authID,
      String profileImageURL,
      String? username,
      String? email,
      String? firstname,
      String? lastname});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object? authID = freezed,
    Object? profileImageURL = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
  }) {
    return _then(_UserProfile(
      authID: authID == freezed
          ? _value.authID
          : authID // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile implements _UserProfile {
  _$_UserProfile(
      {this.authID,
      this.profileImageURL = '',
      this.username,
      this.email,
      this.firstname,
      this.lastname});

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @override
  final String? authID;
  @override
  @JsonKey()
  final String profileImageURL;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? firstname;
  @override
  final String? lastname;

  @override
  String toString() {
    return 'UserProfile(authID: $authID, profileImageURL: $profileImageURL, username: $username, email: $email, firstname: $firstname, lastname: $lastname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfile &&
            const DeepCollectionEquality().equals(other.authID, authID) &&
            const DeepCollectionEquality()
                .equals(other.profileImageURL, profileImageURL) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authID),
      const DeepCollectionEquality().hash(profileImageURL),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname));

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(this);
  }
}

abstract class _UserProfile implements UserProfile {
  factory _UserProfile(
      {final String? authID,
      final String profileImageURL,
      final String? username,
      final String? email,
      final String? firstname,
      final String? lastname}) = _$_UserProfile;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String? get authID => throw _privateConstructorUsedError;
  @override
  String get profileImageURL => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get firstname => throw _privateConstructorUsedError;
  @override
  String? get lastname => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
