// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$PostCopyWithImpl<$Res>;
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
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImageURL = freezed,
    Object? content = freezed,
    Object? recentComment = freezed,
    Object? engagement = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageURL: coverImageURL == freezed
          ? _value.coverImageURL
          : coverImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      recentComment: recentComment == freezed
          ? _value.recentComment
          : recentComment // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      engagement: engagement == freezed
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
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
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImageURL = freezed,
    Object? content = freezed,
    Object? recentComment = freezed,
    Object? engagement = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageURL: coverImageURL == freezed
          ? _value.coverImageURL
          : coverImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      recentComment: recentComment == freezed
          ? _value.recentComment
          : recentComment // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      engagement: engagement == freezed
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: updatedAt == freezed
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _engagement;
  @override
  Map<String, dynamic>? get engagement {
    final value = _engagement;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _author;
  @override
  Map<String, dynamic>? get author {
    final value = _author;
    if (value == null) return null;
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
            other is _Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.coverImageURL, coverImageURL) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.recentComment, recentComment) &&
            const DeepCollectionEquality()
                .equals(other.engagement, engagement) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(coverImageURL),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(recentComment),
      const DeepCollectionEquality().hash(engagement),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
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
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get coverImageURL => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get recentComment => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get engagement => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get author => throw _privateConstructorUsedError;
  @override
  dynamic get createdAt => throw _privateConstructorUsedError;
  @override
  dynamic get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
