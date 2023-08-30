// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get coverImageURL => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Map<String, dynamic>? get recentComment => throw _privateConstructorUsedError;
  Map<String, dynamic>? get engagement => throw _privateConstructorUsedError;
  Map<String, dynamic>? get author => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String id,
      String title,
      String coverImageURL,
      String content,
      Map<String, dynamic>? recentComment,
      Map<String, dynamic>? engagement,
      Map<String, dynamic>? author,
      dynamic createdAt,
      dynamic updatedAt});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? coverImageURL = null,
    Object? content = null,
    Object? recentComment = freezed,
    Object? engagement = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageURL: null == coverImageURL
          ? _value.coverImageURL
          : coverImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      recentComment: freezed == recentComment
          ? _value.recentComment
          : recentComment // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      engagement: freezed == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String coverImageURL,
      String content,
      Map<String, dynamic>? recentComment,
      Map<String, dynamic>? engagement,
      Map<String, dynamic>? author,
      dynamic createdAt,
      dynamic updatedAt});
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? coverImageURL = null,
    Object? content = null,
    Object? recentComment = freezed,
    Object? engagement = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Post(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageURL: null == coverImageURL
          ? _value.coverImageURL
          : coverImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      recentComment: freezed == recentComment
          ? _value._recentComment
          : recentComment // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      engagement: freezed == engagement
          ? _value._engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      author: freezed == author
          ? _value._author
          : author // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  _$_Post(
      {this.id = '',
      this.title = '',
      this.coverImageURL = '',
      this.content = '',
      final Map<String, dynamic>? recentComment,
      final Map<String, dynamic>? engagement,
      final Map<String, dynamic>? author,
      this.createdAt,
      this.updatedAt})
      : _recentComment = recentComment,
        _engagement = engagement,
        _author = author;

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String coverImageURL;
  @override
  @JsonKey()
  final String content;
  final Map<String, dynamic>? _recentComment;
  @override
  Map<String, dynamic>? get recentComment {
    final value = _recentComment;
    if (value == null) return null;
    if (_recentComment is EqualUnmodifiableMapView) return _recentComment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _engagement;
  @override
  Map<String, dynamic>? get engagement {
    final value = _engagement;
    if (value == null) return null;
    if (_engagement is EqualUnmodifiableMapView) return _engagement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _author;
  @override
  Map<String, dynamic>? get author {
    final value = _author;
    if (value == null) return null;
    if (_author is EqualUnmodifiableMapView) return _author;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final dynamic createdAt;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, coverImageURL: $coverImageURL, content: $content, recentComment: $recentComment, engagement: $engagement, author: $author, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImageURL, coverImageURL) ||
                other.coverImageURL == coverImageURL) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._recentComment, _recentComment) &&
            const DeepCollectionEquality()
                .equals(other._engagement, _engagement) &&
            const DeepCollectionEquality().equals(other._author, _author) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      coverImageURL,
      content,
      const DeepCollectionEquality().hash(_recentComment),
      const DeepCollectionEquality().hash(_engagement),
      const DeepCollectionEquality().hash(_author),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  factory _Post(
      {final String id,
      final String title,
      final String coverImageURL,
      final String content,
      final Map<String, dynamic>? recentComment,
      final Map<String, dynamic>? engagement,
      final Map<String, dynamic>? author,
      final dynamic createdAt,
      final dynamic updatedAt}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get coverImageURL;
  @override
  String get content;
  @override
  Map<String, dynamic>? get recentComment;
  @override
  Map<String, dynamic>? get engagement;
  @override
  Map<String, dynamic>? get author;
  @override
  dynamic get createdAt;
  @override
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
