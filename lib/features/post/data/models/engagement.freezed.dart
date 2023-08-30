// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$EngagementCopyWithImpl<$Res, Engagement>;
  @useResult
  $Res call({int comments, int likes, int shares});
}

/// @nodoc
class _$EngagementCopyWithImpl<$Res, $Val extends Engagement>
    implements $EngagementCopyWith<$Res> {
  _$EngagementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? likes = null,
    Object? shares = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EngagementCopyWith<$Res>
    implements $EngagementCopyWith<$Res> {
  factory _$$_EngagementCopyWith(
          _$_Engagement value, $Res Function(_$_Engagement) then) =
      __$$_EngagementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int comments, int likes, int shares});
}

/// @nodoc
class __$$_EngagementCopyWithImpl<$Res>
    extends _$EngagementCopyWithImpl<$Res, _$_Engagement>
    implements _$$_EngagementCopyWith<$Res> {
  __$$_EngagementCopyWithImpl(
      _$_Engagement _value, $Res Function(_$_Engagement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? likes = null,
    Object? shares = null,
  }) {
    return _then(_$_Engagement(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      shares: null == shares
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
            other is _$_Engagement &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.shares, shares) || other.shares == shares));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comments, likes, shares);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EngagementCopyWith<_$_Engagement> get copyWith =>
      __$$_EngagementCopyWithImpl<_$_Engagement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EngagementToJson(
      this,
    );
  }
}

abstract class _Engagement implements Engagement {
  factory _Engagement({final int comments, final int likes, final int shares}) =
      _$_Engagement;

  factory _Engagement.fromJson(Map<String, dynamic> json) =
      _$_Engagement.fromJson;

  @override
  int get comments;
  @override
  int get likes;
  @override
  int get shares;
  @override
  @JsonKey(ignore: true)
  _$$_EngagementCopyWith<_$_Engagement> get copyWith =>
      throw _privateConstructorUsedError;
}
