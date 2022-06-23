// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentComment _$RecentCommentFromJson(Map<String, dynamic> json) {
  return _RecentComment.fromJson(json);
}

/// @nodoc
mixin _$RecentComment {
  Map<String, dynamic>? get recentComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentCommentCopyWith<RecentComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentCommentCopyWith<$Res> {
  factory $RecentCommentCopyWith(
          RecentComment value, $Res Function(RecentComment) then) =
      _$RecentCommentCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic>? recentComment});
}

/// @nodoc
class _$RecentCommentCopyWithImpl<$Res>
    implements $RecentCommentCopyWith<$Res> {
  _$RecentCommentCopyWithImpl(this._value, this._then);

  final RecentComment _value;
  // ignore: unused_field
  final $Res Function(RecentComment) _then;

  @override
  $Res call({
    Object? recentComment = freezed,
  }) {
    return _then(_value.copyWith(
      recentComment: recentComment == freezed
          ? _value.recentComment
          : recentComment // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$RecentCommentCopyWith<$Res>
    implements $RecentCommentCopyWith<$Res> {
  factory _$RecentCommentCopyWith(
          _RecentComment value, $Res Function(_RecentComment) then) =
      __$RecentCommentCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic>? recentComment});
}

/// @nodoc
class __$RecentCommentCopyWithImpl<$Res>
    extends _$RecentCommentCopyWithImpl<$Res>
    implements _$RecentCommentCopyWith<$Res> {
  __$RecentCommentCopyWithImpl(
      _RecentComment _value, $Res Function(_RecentComment) _then)
      : super(_value, (v) => _then(v as _RecentComment));

  @override
  _RecentComment get _value => super._value as _RecentComment;

  @override
  $Res call({
    Object? recentComment = freezed,
  }) {
    return _then(_RecentComment(
      recentComment: recentComment == freezed
          ? _value.recentComment
          : recentComment // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentComment implements _RecentComment {
  _$_RecentComment({final Map<String, dynamic>? recentComment})
      : _recentComment = recentComment;

  factory _$_RecentComment.fromJson(Map<String, dynamic> json) =>
      _$$_RecentCommentFromJson(json);

  final Map<String, dynamic>? _recentComment;
  @override
  Map<String, dynamic>? get recentComment {
    final value = _recentComment;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RecentComment(recentComment: $recentComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecentComment &&
            const DeepCollectionEquality()
                .equals(other.recentComment, recentComment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recentComment));

  @JsonKey(ignore: true)
  @override
  _$RecentCommentCopyWith<_RecentComment> get copyWith =>
      __$RecentCommentCopyWithImpl<_RecentComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentCommentToJson(this);
  }
}

abstract class _RecentComment implements RecentComment {
  factory _RecentComment({final Map<String, dynamic>? recentComment}) =
      _$_RecentComment;

  factory _RecentComment.fromJson(Map<String, dynamic> json) =
      _$_RecentComment.fromJson;

  @override
  Map<String, dynamic>? get recentComment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecentCommentCopyWith<_RecentComment> get copyWith =>
      throw _privateConstructorUsedError;
}
