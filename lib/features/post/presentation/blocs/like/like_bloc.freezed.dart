// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'like_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LikeEventTearOff {
  const _$LikeEventTearOff();

  _Started started() {
    return const _Started();
  }

  _OnAdd onAdd({required AddLikeData addLikeData}) {
    return _OnAdd(
      addLikeData: addLikeData,
    );
  }

  _OnFetchPostLikes onFetchPostLikes({required String postID}) {
    return _OnFetchPostLikes(
      postID: postID,
    );
  }
}

/// @nodoc
const $LikeEvent = _$LikeEventTearOff();

/// @nodoc
mixin _$LikeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddLikeData addLikeData) onAdd,
    required TResult Function(String postID) onFetchPostLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddLikeData addLikeData)? onAdd,
    TResult Function(String postID)? onFetchPostLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddLikeData addLikeData)? onAdd,
    TResult Function(String postID)? onFetchPostLikes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnFetchPostLikes value) onFetchPostLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostLikes value)? onFetchPostLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostLikes value)? onFetchPostLikes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeEventCopyWith<$Res> {
  factory $LikeEventCopyWith(LikeEvent value, $Res Function(LikeEvent) then) =
      _$LikeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikeEventCopyWithImpl<$Res> implements $LikeEventCopyWith<$Res> {
  _$LikeEventCopyWithImpl(this._value, this._then);

  final LikeEvent _value;
  // ignore: unused_field
  final $Res Function(LikeEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LikeEventCopyWithImpl<$Res>
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
    return 'LikeEvent.started()';
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
    required TResult Function(AddLikeData addLikeData) onAdd,
    required TResult Function(String postID) onFetchPostLikes,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddLikeData addLikeData)? onAdd,
    TResult Function(String postID)? onFetchPostLikes,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddLikeData addLikeData)? onAdd,
    TResult Function(String postID)? onFetchPostLikes,
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
    required TResult Function(_OnFetchPostLikes value) onFetchPostLikes,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostLikes value)? onFetchPostLikes,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostLikes value)? onFetchPostLikes,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LikeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$OnAddCopyWith<$Res> {
  factory _$OnAddCopyWith(_OnAdd value, $Res Function(_OnAdd) then) =
      __$OnAddCopyWithImpl<$Res>;
  $Res call({AddLikeData addLikeData});
}

/// @nodoc
class __$OnAddCopyWithImpl<$Res> extends _$LikeEventCopyWithImpl<$Res>
    implements _$OnAddCopyWith<$Res> {
  __$OnAddCopyWithImpl(_OnAdd _value, $Res Function(_OnAdd) _then)
      : super(_value, (v) => _then(v as _OnAdd));

  @override
  _OnAdd get _value => super._value as _OnAdd;

  @override
  $Res call({
    Object? addLikeData = freezed,
  }) {
    return _then(_OnAdd(
      addLikeData: addLikeData == freezed
          ? _value.addLikeData
          : addLikeData // ignore: cast_nullable_to_non_nullable
              as AddLikeData,
    ));
  }
}

/// @nodoc

class _$_OnAdd implements _OnAdd {
  const _$_OnAdd({required this.addLikeData});

  @override
  final AddLikeData addLikeData;

  @override
  String toString() {
    return 'LikeEvent.onAdd(addLikeData: $addLikeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnAdd &&
            const DeepCollectionEquality()
                .equals(other.addLikeData, addLikeData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(addLikeData));

  @JsonKey(ignore: true)
  @override
  _$OnAddCopyWith<_OnAdd> get copyWith =>
      __$OnAddCopyWithImpl<_OnAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddLikeData addLikeData) onAdd,
    required TResult Function(String postID) onFetchPostLikes,
  }) {
    return onAdd(addLikeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddLikeData addLikeData)? onAdd,
    TResult Function(String postID)? onFetchPostLikes,
  }) {
    return onAdd?.call(addLikeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddLikeData addLikeData)? onAdd,
    TResult Function(String postID)? onFetchPostLikes,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(addLikeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnFetchPostLikes value) onFetchPostLikes,
  }) {
    return onAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostLikes value)? onFetchPostLikes,
  }) {
    return onAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostLikes value)? onFetchPostLikes,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class _OnAdd implements LikeEvent {
  const factory _OnAdd({required AddLikeData addLikeData}) = _$_OnAdd;

  AddLikeData get addLikeData;
  @JsonKey(ignore: true)
  _$OnAddCopyWith<_OnAdd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnFetchPostLikesCopyWith<$Res> {
  factory _$OnFetchPostLikesCopyWith(
          _OnFetchPostLikes value, $Res Function(_OnFetchPostLikes) then) =
      __$OnFetchPostLikesCopyWithImpl<$Res>;
  $Res call({String postID});
}

/// @nodoc
class __$OnFetchPostLikesCopyWithImpl<$Res>
    extends _$LikeEventCopyWithImpl<$Res>
    implements _$OnFetchPostLikesCopyWith<$Res> {
  __$OnFetchPostLikesCopyWithImpl(
      _OnFetchPostLikes _value, $Res Function(_OnFetchPostLikes) _then)
      : super(_value, (v) => _then(v as _OnFetchPostLikes));

  @override
  _OnFetchPostLikes get _value => super._value as _OnFetchPostLikes;

  @override
  $Res call({
    Object? postID = freezed,
  }) {
    return _then(_OnFetchPostLikes(
      postID: postID == freezed
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnFetchPostLikes implements _OnFetchPostLikes {
  const _$_OnFetchPostLikes({required this.postID});

  @override
  final String postID;

  @override
  String toString() {
    return 'LikeEvent.onFetchPostLikes(postID: $postID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnFetchPostLikes &&
            const DeepCollectionEquality().equals(other.postID, postID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postID));

  @JsonKey(ignore: true)
  @override
  _$OnFetchPostLikesCopyWith<_OnFetchPostLikes> get copyWith =>
      __$OnFetchPostLikesCopyWithImpl<_OnFetchPostLikes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddLikeData addLikeData) onAdd,
    required TResult Function(String postID) onFetchPostLikes,
  }) {
    return onFetchPostLikes(postID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddLikeData addLikeData)? onAdd,
    TResult Function(String postID)? onFetchPostLikes,
  }) {
    return onFetchPostLikes?.call(postID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddLikeData addLikeData)? onAdd,
    TResult Function(String postID)? onFetchPostLikes,
    required TResult orElse(),
  }) {
    if (onFetchPostLikes != null) {
      return onFetchPostLikes(postID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnFetchPostLikes value) onFetchPostLikes,
  }) {
    return onFetchPostLikes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostLikes value)? onFetchPostLikes,
  }) {
    return onFetchPostLikes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnFetchPostLikes value)? onFetchPostLikes,
    required TResult orElse(),
  }) {
    if (onFetchPostLikes != null) {
      return onFetchPostLikes(this);
    }
    return orElse();
  }
}

abstract class _OnFetchPostLikes implements LikeEvent {
  const factory _OnFetchPostLikes({required String postID}) =
      _$_OnFetchPostLikes;

  String get postID;
  @JsonKey(ignore: true)
  _$OnFetchPostLikesCopyWith<_OnFetchPostLikes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LikeStateTearOff {
  const _$LikeStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Liked liked({required bool isLiked}) {
    return _Liked(
      isLiked: isLiked,
    );
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $LikeState = _$LikeStateTearOff();

/// @nodoc
mixin _$LikeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLiked) liked,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLiked)? liked,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLiked)? liked,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Liked value)? liked,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Liked value)? liked,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeStateCopyWith<$Res> {
  factory $LikeStateCopyWith(LikeState value, $Res Function(LikeState) then) =
      _$LikeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikeStateCopyWithImpl<$Res> implements $LikeStateCopyWith<$Res> {
  _$LikeStateCopyWithImpl(this._value, this._then);

  final LikeState _value;
  // ignore: unused_field
  final $Res Function(LikeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LikeStateCopyWithImpl<$Res>
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
    return 'LikeState.initial()';
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
    required TResult Function(bool isLiked) liked,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLiked)? liked,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLiked)? liked,
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
    required TResult Function(_Liked value) liked,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Liked value)? liked,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Liked value)? liked,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LikeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  $Res call({bool isLiked});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$LikeStateCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object? isLiked = freezed,
  }) {
    return _then(_Liked(
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked({required this.isLiked});

  @override
  final bool isLiked;

  @override
  String toString() {
    return 'LikeState.liked(isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Liked &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLiked));

  @JsonKey(ignore: true)
  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLiked) liked,
    required TResult Function() error,
  }) {
    return liked(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLiked)? liked,
    TResult Function()? error,
  }) {
    return liked?.call(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLiked)? liked,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Error value) error,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Liked value)? liked,
    TResult Function(_Error value)? error,
  }) {
    return liked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Liked value)? liked,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements LikeState {
  const factory _Liked({required bool isLiked}) = _$_Liked;

  bool get isLiked;
  @JsonKey(ignore: true)
  _$LikedCopyWith<_Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LikeStateCopyWithImpl<$Res>
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
    return 'LikeState.error()';
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
    required TResult Function(bool isLiked) liked,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLiked)? liked,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLiked)? liked,
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
    required TResult Function(_Liked value) liked,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Liked value)? liked,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Liked value)? liked,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LikeState {
  const factory _Error() = _$_Error;
}
