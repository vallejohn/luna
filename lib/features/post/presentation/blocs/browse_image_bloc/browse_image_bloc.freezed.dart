// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'browse_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrowseImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onBrowse,
    required TResult Function() onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBrowse,
    TResult Function()? onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBrowse,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnBrowse value) onBrowse,
    required TResult Function(_OnCancel value) onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnBrowse value)? onBrowse,
    TResult Function(_OnCancel value)? onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnBrowse value)? onBrowse,
    TResult Function(_OnCancel value)? onCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowseImageEventCopyWith<$Res> {
  factory $BrowseImageEventCopyWith(
          BrowseImageEvent value, $Res Function(BrowseImageEvent) then) =
      _$BrowseImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BrowseImageEventCopyWithImpl<$Res>
    implements $BrowseImageEventCopyWith<$Res> {
  _$BrowseImageEventCopyWithImpl(this._value, this._then);

  final BrowseImageEvent _value;
  // ignore: unused_field
  final $Res Function(BrowseImageEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$BrowseImageEventCopyWithImpl<$Res>
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
    return 'BrowseImageEvent.started()';
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
    required TResult Function() onBrowse,
    required TResult Function() onCancel,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBrowse,
    TResult Function()? onCancel,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBrowse,
    TResult Function()? onCancel,
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
    required TResult Function(_OnBrowse value) onBrowse,
    required TResult Function(_OnCancel value) onCancel,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnBrowse value)? onBrowse,
    TResult Function(_OnCancel value)? onCancel,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnBrowse value)? onBrowse,
    TResult Function(_OnCancel value)? onCancel,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BrowseImageEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$OnBrowseCopyWith<$Res> {
  factory _$OnBrowseCopyWith(_OnBrowse value, $Res Function(_OnBrowse) then) =
      __$OnBrowseCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnBrowseCopyWithImpl<$Res> extends _$BrowseImageEventCopyWithImpl<$Res>
    implements _$OnBrowseCopyWith<$Res> {
  __$OnBrowseCopyWithImpl(_OnBrowse _value, $Res Function(_OnBrowse) _then)
      : super(_value, (v) => _then(v as _OnBrowse));

  @override
  _OnBrowse get _value => super._value as _OnBrowse;
}

/// @nodoc

class _$_OnBrowse implements _OnBrowse {
  const _$_OnBrowse();

  @override
  String toString() {
    return 'BrowseImageEvent.onBrowse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnBrowse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onBrowse,
    required TResult Function() onCancel,
  }) {
    return onBrowse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBrowse,
    TResult Function()? onCancel,
  }) {
    return onBrowse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBrowse,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) {
    if (onBrowse != null) {
      return onBrowse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnBrowse value) onBrowse,
    required TResult Function(_OnCancel value) onCancel,
  }) {
    return onBrowse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnBrowse value)? onBrowse,
    TResult Function(_OnCancel value)? onCancel,
  }) {
    return onBrowse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnBrowse value)? onBrowse,
    TResult Function(_OnCancel value)? onCancel,
    required TResult orElse(),
  }) {
    if (onBrowse != null) {
      return onBrowse(this);
    }
    return orElse();
  }
}

abstract class _OnBrowse implements BrowseImageEvent {
  const factory _OnBrowse() = _$_OnBrowse;
}

/// @nodoc
abstract class _$OnCancelCopyWith<$Res> {
  factory _$OnCancelCopyWith(_OnCancel value, $Res Function(_OnCancel) then) =
      __$OnCancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnCancelCopyWithImpl<$Res> extends _$BrowseImageEventCopyWithImpl<$Res>
    implements _$OnCancelCopyWith<$Res> {
  __$OnCancelCopyWithImpl(_OnCancel _value, $Res Function(_OnCancel) _then)
      : super(_value, (v) => _then(v as _OnCancel));

  @override
  _OnCancel get _value => super._value as _OnCancel;
}

/// @nodoc

class _$_OnCancel implements _OnCancel {
  const _$_OnCancel();

  @override
  String toString() {
    return 'BrowseImageEvent.onCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnCancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onBrowse,
    required TResult Function() onCancel,
  }) {
    return onCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBrowse,
    TResult Function()? onCancel,
  }) {
    return onCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBrowse,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnBrowse value) onBrowse,
    required TResult Function(_OnCancel value) onCancel,
  }) {
    return onCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnBrowse value)? onBrowse,
    TResult Function(_OnCancel value)? onCancel,
  }) {
    return onCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnBrowse value)? onBrowse,
    TResult Function(_OnCancel value)? onCancel,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel(this);
    }
    return orElse();
  }
}

abstract class _OnCancel implements BrowseImageEvent {
  const factory _OnCancel() = _$_OnCancel;
}

/// @nodoc
mixin _$BrowseImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(PickedFile image) success,
    required TResult Function() cancelled,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowseImageStateCopyWith<$Res> {
  factory $BrowseImageStateCopyWith(
          BrowseImageState value, $Res Function(BrowseImageState) then) =
      _$BrowseImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BrowseImageStateCopyWithImpl<$Res>
    implements $BrowseImageStateCopyWith<$Res> {
  _$BrowseImageStateCopyWithImpl(this._value, this._then);

  final BrowseImageState _value;
  // ignore: unused_field
  final $Res Function(BrowseImageState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BrowseImageStateCopyWithImpl<$Res>
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
    return 'BrowseImageState.initial()';
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
    required TResult Function() uploading,
    required TResult Function(PickedFile image) success,
    required TResult Function() cancelled,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
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
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BrowseImageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UploadingCopyWith<$Res> {
  factory _$UploadingCopyWith(
          _Uploading value, $Res Function(_Uploading) then) =
      __$UploadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$UploadingCopyWithImpl<$Res>
    extends _$BrowseImageStateCopyWithImpl<$Res>
    implements _$UploadingCopyWith<$Res> {
  __$UploadingCopyWithImpl(_Uploading _value, $Res Function(_Uploading) _then)
      : super(_value, (v) => _then(v as _Uploading));

  @override
  _Uploading get _value => super._value as _Uploading;
}

/// @nodoc

class _$_Uploading implements _Uploading {
  const _$_Uploading();

  @override
  String toString() {
    return 'BrowseImageState.uploading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Uploading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(PickedFile image) success,
    required TResult Function() cancelled,
    required TResult Function() error,
  }) {
    return uploading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
  }) {
    return uploading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Error value) error,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class _Uploading implements BrowseImageState {
  const factory _Uploading() = _$_Uploading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({PickedFile image});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$BrowseImageStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_Success(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PickedFile,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.image});

  @override
  final PickedFile image;

  @override
  String toString() {
    return 'BrowseImageState.success(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(PickedFile image) success,
    required TResult Function() cancelled,
    required TResult Function() error,
  }) {
    return success(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
  }) {
    return success?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BrowseImageState {
  const factory _Success({required final PickedFile image}) = _$_Success;

  PickedFile get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelledCopyWith<$Res> {
  factory _$CancelledCopyWith(
          _Cancelled value, $Res Function(_Cancelled) then) =
      __$CancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelledCopyWithImpl<$Res>
    extends _$BrowseImageStateCopyWithImpl<$Res>
    implements _$CancelledCopyWith<$Res> {
  __$CancelledCopyWithImpl(_Cancelled _value, $Res Function(_Cancelled) _then)
      : super(_value, (v) => _then(v as _Cancelled));

  @override
  _Cancelled get _value => super._value as _Cancelled;
}

/// @nodoc

class _$_Cancelled implements _Cancelled {
  const _$_Cancelled();

  @override
  String toString() {
    return 'BrowseImageState.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(PickedFile image) success,
    required TResult Function() cancelled,
    required TResult Function() error,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Error value) error,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements BrowseImageState {
  const factory _Cancelled() = _$_Cancelled;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$BrowseImageStateCopyWithImpl<$Res>
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
    return 'BrowseImageState.error()';
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
    required TResult Function() uploading,
    required TResult Function(PickedFile image) success,
    required TResult Function() cancelled,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(PickedFile image)? success,
    TResult Function()? cancelled,
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
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Success value)? success,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BrowseImageState {
  const factory _Error() = _$_Error;
}
