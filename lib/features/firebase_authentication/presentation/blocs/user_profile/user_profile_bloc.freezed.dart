// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserProfileParam param) userUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfileParam param)? userUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfileParam param)? userUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserUpdate value) userUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserUpdate value)? userUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserUpdate value)? userUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
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
    return 'UserProfileEvent.started()';
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
    required TResult Function(UserProfileParam param) userUpdate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfileParam param)? userUpdate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfileParam param)? userUpdate,
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
    required TResult Function(_UserUpdate value) userUpdate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserUpdate value)? userUpdate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserUpdate value)? userUpdate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$UserUpdateCopyWith<$Res> {
  factory _$UserUpdateCopyWith(
          _UserUpdate value, $Res Function(_UserUpdate) then) =
      __$UserUpdateCopyWithImpl<$Res>;
  $Res call({UserProfileParam param});
}

/// @nodoc
class __$UserUpdateCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$UserUpdateCopyWith<$Res> {
  __$UserUpdateCopyWithImpl(
      _UserUpdate _value, $Res Function(_UserUpdate) _then)
      : super(_value, (v) => _then(v as _UserUpdate));

  @override
  _UserUpdate get _value => super._value as _UserUpdate;

  @override
  $Res call({
    Object? param = freezed,
  }) {
    return _then(_UserUpdate(
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as UserProfileParam,
    ));
  }
}

/// @nodoc

class _$_UserUpdate implements _UserUpdate {
  const _$_UserUpdate({required this.param});

  @override
  final UserProfileParam param;

  @override
  String toString() {
    return 'UserProfileEvent.userUpdate(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserUpdate &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(param));

  @JsonKey(ignore: true)
  @override
  _$UserUpdateCopyWith<_UserUpdate> get copyWith =>
      __$UserUpdateCopyWithImpl<_UserUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserProfileParam param) userUpdate,
  }) {
    return userUpdate(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfileParam param)? userUpdate,
  }) {
    return userUpdate?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfileParam param)? userUpdate,
    required TResult orElse(),
  }) {
    if (userUpdate != null) {
      return userUpdate(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserUpdate value) userUpdate,
  }) {
    return userUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserUpdate value)? userUpdate,
  }) {
    return userUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserUpdate value)? userUpdate,
    required TResult orElse(),
  }) {
    if (userUpdate != null) {
      return userUpdate(this);
    }
    return orElse();
  }
}

abstract class _UserUpdate implements UserProfileEvent {
  const factory _UserUpdate({required final UserProfileParam param}) =
      _$_UserUpdate;

  UserProfileParam get param => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserUpdateCopyWith<_UserUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserProfileParam param) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserProfileParam param)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserProfileParam param)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithData value) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.initial()';
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
    required TResult Function(UserProfileParam param) withData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserProfileParam param)? withData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserProfileParam param)? withData,
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
    required TResult Function(_WithData value) withData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$WithDataCopyWith<$Res> {
  factory _$WithDataCopyWith(_WithData value, $Res Function(_WithData) then) =
      __$WithDataCopyWithImpl<$Res>;
  $Res call({UserProfileParam param});
}

/// @nodoc
class __$WithDataCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$WithDataCopyWith<$Res> {
  __$WithDataCopyWithImpl(_WithData _value, $Res Function(_WithData) _then)
      : super(_value, (v) => _then(v as _WithData));

  @override
  _WithData get _value => super._value as _WithData;

  @override
  $Res call({
    Object? param = freezed,
  }) {
    return _then(_WithData(
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as UserProfileParam,
    ));
  }
}

/// @nodoc

class _$_WithData implements _WithData {
  const _$_WithData({required this.param});

  @override
  final UserProfileParam param;

  @override
  String toString() {
    return 'UserProfileState.withData(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithData &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(param));

  @JsonKey(ignore: true)
  @override
  _$WithDataCopyWith<_WithData> get copyWith =>
      __$WithDataCopyWithImpl<_WithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserProfileParam param) withData,
  }) {
    return withData(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserProfileParam param)? withData,
  }) {
    return withData?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserProfileParam param)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WithData value) withData,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WithData value)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class _WithData implements UserProfileState {
  const factory _WithData({required final UserProfileParam param}) =
      _$_WithData;

  UserProfileParam get param => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WithDataCopyWith<_WithData> get copyWith =>
      throw _privateConstructorUsedError;
}
