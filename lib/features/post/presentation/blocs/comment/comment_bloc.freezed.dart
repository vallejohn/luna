// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddCommentData addCommentData) onAdd,
    required TResult Function(String postID) onFetchPostComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddCommentData addCommentData)? onAdd,
    TResult Function(String postID)? onFetchPostComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddCommentData addCommentData)? onAdd,
    TResult Function(String postID)? onFetchPostComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnFetchPostComments value) onFetchPostComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostComments value)? onFetchPostComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostComments value)? onFetchPostComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEventCopyWith<$Res> {
  factory $CommentEventCopyWith(
          CommentEvent value, $Res Function(CommentEvent) then) =
      _$CommentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentEventCopyWithImpl<$Res> implements $CommentEventCopyWith<$Res> {
  _$CommentEventCopyWithImpl(this._value, this._then);

  final CommentEvent _value;
  // ignore: unused_field
  final $Res Function(CommentEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CommentEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CommentEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddCommentData addCommentData) onAdd,
    required TResult Function(String postID) onFetchPostComments,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddCommentData addCommentData)? onAdd,
    TResult Function(String postID)? onFetchPostComments,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddCommentData addCommentData)? onAdd,
    TResult Function(String postID)? onFetchPostComments,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnFetchPostComments value) onFetchPostComments,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostComments value)? onFetchPostComments,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostComments value)? onFetchPostComments,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommentEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$OnAddCopyWith<$Res> {
  factory _$OnAddCopyWith(_OnAdd value, $Res Function(_OnAdd) then) =
      __$OnAddCopyWithImpl<$Res>;
  $Res call({AddCommentData addCommentData});
}

/// @nodoc
class __$OnAddCopyWithImpl<$Res> extends _$CommentEventCopyWithImpl<$Res>
    implements _$OnAddCopyWith<$Res> {
  __$OnAddCopyWithImpl(_OnAdd _value, $Res Function(_OnAdd) _then)
      : super(_value, (v) => _then(v as _OnAdd));

  @override
  _OnAdd get _value => super._value as _OnAdd;

  @override
  $Res call({
    Object? addCommentData = freezed,
  }) {
    return _then(_OnAdd(
      addCommentData: addCommentData == freezed
          ? _value.addCommentData
          : addCommentData // ignore: cast_nullable_to_non_nullable
              as AddCommentData,
    ));
  }
}

/// @nodoc

class _$_OnAdd implements _OnAdd {
  const _$_OnAdd({required this.addCommentData});

  @override
  final AddCommentData addCommentData;

  @override
  String toString() {
    return 'CommentEvent.onAdd(addCommentData: $addCommentData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnAdd &&
            const DeepCollectionEquality()
                .equals(other.addCommentData, addCommentData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(addCommentData));

  @JsonKey(ignore: true)
  @override
  _$OnAddCopyWith<_OnAdd> get copyWith =>
      __$OnAddCopyWithImpl<_OnAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddCommentData addCommentData) onAdd,
    required TResult Function(String postID) onFetchPostComments,
  }) {
    return onAdd(addCommentData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddCommentData addCommentData)? onAdd,
    TResult Function(String postID)? onFetchPostComments,
  }) {
    return onAdd?.call(addCommentData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddCommentData addCommentData)? onAdd,
    TResult Function(String postID)? onFetchPostComments,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(addCommentData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnFetchPostComments value) onFetchPostComments,
  }) {
    return onAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostComments value)? onFetchPostComments,
  }) {
    return onAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostComments value)? onFetchPostComments,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class _OnAdd implements CommentEvent {
  const factory _OnAdd({required final AddCommentData addCommentData}) =
      _$_OnAdd;

  AddCommentData get addCommentData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnAddCopyWith<_OnAdd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnFetchPostCommentsCopyWith<$Res> {
  factory _$OnFetchPostCommentsCopyWith(_OnFetchPostComments value,
          $Res Function(_OnFetchPostComments) then) =
      __$OnFetchPostCommentsCopyWithImpl<$Res>;
  $Res call({String postID});
}

/// @nodoc
class __$OnFetchPostCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res>
    implements _$OnFetchPostCommentsCopyWith<$Res> {
  __$OnFetchPostCommentsCopyWithImpl(
      _OnFetchPostComments _value, $Res Function(_OnFetchPostComments) _then)
      : super(_value, (v) => _then(v as _OnFetchPostComments));

  @override
  _OnFetchPostComments get _value => super._value as _OnFetchPostComments;

  @override
  $Res call({
    Object? postID = freezed,
  }) {
    return _then(_OnFetchPostComments(
      postID: postID == freezed
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnFetchPostComments implements _OnFetchPostComments {
  const _$_OnFetchPostComments({required this.postID});

  @override
  final String postID;

  @override
  String toString() {
    return 'CommentEvent.onFetchPostComments(postID: $postID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnFetchPostComments &&
            const DeepCollectionEquality().equals(other.postID, postID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postID));

  @JsonKey(ignore: true)
  @override
  _$OnFetchPostCommentsCopyWith<_OnFetchPostComments> get copyWith =>
      __$OnFetchPostCommentsCopyWithImpl<_OnFetchPostComments>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddCommentData addCommentData) onAdd,
    required TResult Function(String postID) onFetchPostComments,
  }) {
    return onFetchPostComments(postID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddCommentData addCommentData)? onAdd,
    TResult Function(String postID)? onFetchPostComments,
  }) {
    return onFetchPostComments?.call(postID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddCommentData addCommentData)? onAdd,
    TResult Function(String postID)? onFetchPostComments,
    required TResult orElse(),
  }) {
    if (onFetchPostComments != null) {
      return onFetchPostComments(postID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnFetchPostComments value) onFetchPostComments,
  }) {
    return onFetchPostComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostComments value)? onFetchPostComments,
  }) {
    return onFetchPostComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostComments value)? onFetchPostComments,
    required TResult orElse(),
  }) {
    if (onFetchPostComments != null) {
      return onFetchPostComments(this);
    }
    return orElse();
  }
}

abstract class _OnFetchPostComments implements CommentEvent {
  const factory _OnFetchPostComments({required final String postID}) =
      _$_OnFetchPostComments;

  String get postID => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnFetchPostCommentsCopyWith<_OnFetchPostComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)
        success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res> implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

  final CommentState _value;
  // ignore: unused_field
  final $Res Function(CommentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CommentStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CommentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)
        success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)? success,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({Stream<QuerySnapshot<Object?>> commentsStream});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$CommentStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? commentsStream = freezed,
  }) {
    return _then(_Success(
      commentsStream: commentsStream == freezed
          ? _value.commentsStream
          : commentsStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Object?>>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.commentsStream});

  @override
  final Stream<QuerySnapshot<Object?>> commentsStream;

  @override
  String toString() {
    return 'CommentState.success(commentsStream: $commentsStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            const DeepCollectionEquality()
                .equals(other.commentsStream, commentsStream));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(commentsStream));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)
        success,
    required TResult Function() error,
  }) {
    return success(commentsStream);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)? success,
    TResult Function()? error,
  }) {
    return success?.call(commentsStream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(commentsStream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CommentState {
  const factory _Success(
          {required final Stream<QuerySnapshot<Object?>> commentsStream}) =
      _$_Success;

  Stream<QuerySnapshot<Object?>> get commentsStream =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CommentStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CommentState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)
        success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Stream<QuerySnapshot<Object?>> commentsStream)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CommentState {
  const factory _Error() = _$_Error;
}
