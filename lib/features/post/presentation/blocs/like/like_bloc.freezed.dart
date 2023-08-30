// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function()? started,
    TResult? Function(AddLikeData addLikeData)? onAdd,
    TResult? Function(String postID)? onFetchPostLikes,
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
    TResult? Function(_Started value)? started,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnFetchPostLikes value)? onFetchPostLikes,
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
      _$LikeEventCopyWithImpl<$Res, LikeEvent>;
}

/// @nodoc
class _$LikeEventCopyWithImpl<$Res, $Val extends LikeEvent>
    implements $LikeEventCopyWith<$Res> {
  _$LikeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$LikeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_Started);
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
    TResult? Function()? started,
    TResult? Function(AddLikeData addLikeData)? onAdd,
    TResult? Function(String postID)? onFetchPostLikes,
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
    TResult? Function(_Started value)? started,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnFetchPostLikes value)? onFetchPostLikes,
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
abstract class _$$_OnAddCopyWith<$Res> {
  factory _$$_OnAddCopyWith(_$_OnAdd value, $Res Function(_$_OnAdd) then) =
      __$$_OnAddCopyWithImpl<$Res>;
  @useResult
  $Res call({AddLikeData addLikeData});
}

/// @nodoc
class __$$_OnAddCopyWithImpl<$Res>
    extends _$LikeEventCopyWithImpl<$Res, _$_OnAdd>
    implements _$$_OnAddCopyWith<$Res> {
  __$$_OnAddCopyWithImpl(_$_OnAdd _value, $Res Function(_$_OnAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addLikeData = null,
  }) {
    return _then(_$_OnAdd(
      addLikeData: null == addLikeData
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
            other is _$_OnAdd &&
            (identical(other.addLikeData, addLikeData) ||
                other.addLikeData == addLikeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addLikeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnAddCopyWith<_$_OnAdd> get copyWith =>
      __$$_OnAddCopyWithImpl<_$_OnAdd>(this, _$identity);

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
    TResult? Function()? started,
    TResult? Function(AddLikeData addLikeData)? onAdd,
    TResult? Function(String postID)? onFetchPostLikes,
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
    TResult? Function(_Started value)? started,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnFetchPostLikes value)? onFetchPostLikes,
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
  const factory _OnAdd({required final AddLikeData addLikeData}) = _$_OnAdd;

  AddLikeData get addLikeData;
  @JsonKey(ignore: true)
  _$$_OnAddCopyWith<_$_OnAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnFetchPostLikesCopyWith<$Res> {
  factory _$$_OnFetchPostLikesCopyWith(
          _$_OnFetchPostLikes value, $Res Function(_$_OnFetchPostLikes) then) =
      __$$_OnFetchPostLikesCopyWithImpl<$Res>;
  @useResult
  $Res call({String postID});
}

/// @nodoc
class __$$_OnFetchPostLikesCopyWithImpl<$Res>
    extends _$LikeEventCopyWithImpl<$Res, _$_OnFetchPostLikes>
    implements _$$_OnFetchPostLikesCopyWith<$Res> {
  __$$_OnFetchPostLikesCopyWithImpl(
      _$_OnFetchPostLikes _value, $Res Function(_$_OnFetchPostLikes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
  }) {
    return _then(_$_OnFetchPostLikes(
      postID: null == postID
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
            other is _$_OnFetchPostLikes &&
            (identical(other.postID, postID) || other.postID == postID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnFetchPostLikesCopyWith<_$_OnFetchPostLikes> get copyWith =>
      __$$_OnFetchPostLikesCopyWithImpl<_$_OnFetchPostLikes>(this, _$identity);

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
    TResult? Function()? started,
    TResult? Function(AddLikeData addLikeData)? onAdd,
    TResult? Function(String postID)? onFetchPostLikes,
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
    TResult? Function(_Started value)? started,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnFetchPostLikes value)? onFetchPostLikes,
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
  const factory _OnFetchPostLikes({required final String postID}) =
      _$_OnFetchPostLikes;

  String get postID;
  @JsonKey(ignore: true)
  _$$_OnFetchPostLikesCopyWith<_$_OnFetchPostLikes> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function()? initial,
    TResult? Function(bool isLiked)? liked,
    TResult? Function()? error,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Liked value)? liked,
    TResult? Function(_Error value)? error,
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
      _$LikeStateCopyWithImpl<$Res, LikeState>;
}

/// @nodoc
class _$LikeStateCopyWithImpl<$Res, $Val extends LikeState>
    implements $LikeStateCopyWith<$Res> {
  _$LikeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LikeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_Initial);
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
    TResult? Function()? initial,
    TResult? Function(bool isLiked)? liked,
    TResult? Function()? error,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Liked value)? liked,
    TResult? Function(_Error value)? error,
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
abstract class _$$_LikedCopyWith<$Res> {
  factory _$$_LikedCopyWith(_$_Liked value, $Res Function(_$_Liked) then) =
      __$$_LikedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLiked});
}

/// @nodoc
class __$$_LikedCopyWithImpl<$Res>
    extends _$LikeStateCopyWithImpl<$Res, _$_Liked>
    implements _$$_LikedCopyWith<$Res> {
  __$$_LikedCopyWithImpl(_$_Liked _value, $Res Function(_$_Liked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
  }) {
    return _then(_$_Liked(
      isLiked: null == isLiked
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
            other is _$_Liked &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikedCopyWith<_$_Liked> get copyWith =>
      __$$_LikedCopyWithImpl<_$_Liked>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function(bool isLiked)? liked,
    TResult? Function()? error,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Liked value)? liked,
    TResult? Function(_Error value)? error,
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
  const factory _Liked({required final bool isLiked}) = _$_Liked;

  bool get isLiked;
  @JsonKey(ignore: true)
  _$$_LikedCopyWith<_$_Liked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$LikeStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_Error);
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
    TResult? Function()? initial,
    TResult? Function(bool isLiked)? liked,
    TResult? Function()? error,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Liked value)? liked,
    TResult? Function(_Error value)? error,
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
