// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'engagement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Engagement _$EngagementFromJson(Map<String, dynamic> json) {
  return _Engagement.fromJson(json);
}

/// @nodoc
mixin _$Engagement {
  int get comments => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get shares => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngagementCopyWith<Engagement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngagementCopyWith<$Res> {
  factory $EngagementCopyWith(
          Engagement value, $Res Function(Engagement) then) =
      _$EngagementCopyWithImpl<$Res>;
  $Res call({int comments, int likes, int shares});
}

/// @nodoc
class _$EngagementCopyWithImpl<$Res> implements $EngagementCopyWith<$Res> {
  _$EngagementCopyWithImpl(this._value, this._then);

  final Engagement _value;
  // ignore: unused_field
  final $Res Function(Engagement) _then;

  @override
  $Res call({
    Object? comments = freezed,
    Object? likes = freezed,
    Object? shares = freezed,
  }) {
    return _then(_value.copyWith(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      shares: shares == freezed
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$EngagementCopyWith<$Res> implements $EngagementCopyWith<$Res> {
  factory _$EngagementCopyWith(
          _Engagement value, $Res Function(_Engagement) then) =
      __$EngagementCopyWithImpl<$Res>;
  @override
  $Res call({int comments, int likes, int shares});
}

/// @nodoc
class __$EngagementCopyWithImpl<$Res> extends _$EngagementCopyWithImpl<$Res>
    implements _$EngagementCopyWith<$Res> {
  __$EngagementCopyWithImpl(
      _Engagement _value, $Res Function(_Engagement) _then)
      : super(_value, (v) => _then(v as _Engagement));

  @override
  _Engagement get _value => super._value as _Engagement;

  @override
  $Res call({
    Object? comments = freezed,
    Object? likes = freezed,
    Object? shares = freezed,
  }) {
    return _then(_Engagement(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      shares: shares == freezed
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Engagement implements _Engagement {
  _$_Engagement({this.comments = 0, this.likes = 0, this.shares = 0});

  factory _$_Engagement.fromJson(Map<String, dynamic> json) =>
      _$$_EngagementFromJson(json);

  @override
  @JsonKey()
  final int comments;
  @override
  @JsonKey()
  final int likes;
  @override
  @JsonKey()
  final int shares;

  @override
  String toString() {
    return 'Engagement(comments: $comments, likes: $likes, shares: $shares)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Engagement &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.shares, shares));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(shares));

  @JsonKey(ignore: true)
  @override
  _$EngagementCopyWith<_Engagement> get copyWith =>
      __$EngagementCopyWithImpl<_Engagement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EngagementToJson(this);
  }
}

abstract class _Engagement implements Engagement {
  factory _Engagement({final int comments, final int likes, final int shares}) =
      _$_Engagement;

  factory _Engagement.fromJson(Map<String, dynamic> json) =
      _$_Engagement.fromJson;

  @override
  int get comments => throw _privateConstructorUsedError;
  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  int get shares => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EngagementCopyWith<_Engagement> get copyWith =>
      throw _privateConstructorUsedError;
}
