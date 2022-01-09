// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataStateTearOff {
  const _$DataStateTearOff();

  _Success<Type, Error> success<Type, Error>({Type? data}) {
    return _Success<Type, Error>(
      data: data,
    );
  }

  _Failed<Type, Error> failed<Type, Error>({required Error error}) {
    return _Failed<Type, Error>(
      error: error,
    );
  }
}

/// @nodoc
const $DataState = _$DataStateTearOff();

/// @nodoc
mixin _$DataState<Type, Error> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type? data) success,
    required TResult Function(Error error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Type? data)? success,
    TResult Function(Error error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type? data)? success,
    TResult Function(Error error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<Type, Error> value) success,
    required TResult Function(_Failed<Type, Error> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failed<Type, Error> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failed<Type, Error> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<Type, Error, $Res> {
  factory $DataStateCopyWith(DataState<Type, Error> value,
          $Res Function(DataState<Type, Error>) then) =
      _$DataStateCopyWithImpl<Type, Error, $Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<Type, Error, $Res>
    implements $DataStateCopyWith<Type, Error, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState<Type, Error> _value;
  // ignore: unused_field
  final $Res Function(DataState<Type, Error>) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<Type, Error, $Res> {
  factory _$SuccessCopyWith(_Success<Type, Error> value,
          $Res Function(_Success<Type, Error>) then) =
      __$SuccessCopyWithImpl<Type, Error, $Res>;
  $Res call({Type? data});
}

/// @nodoc
class __$SuccessCopyWithImpl<Type, Error, $Res>
    extends _$DataStateCopyWithImpl<Type, Error, $Res>
    implements _$SuccessCopyWith<Type, Error, $Res> {
  __$SuccessCopyWithImpl(
      _Success<Type, Error> _value, $Res Function(_Success<Type, Error>) _then)
      : super(_value, (v) => _then(v as _Success<Type, Error>));

  @override
  _Success<Type, Error> get _value => super._value as _Success<Type, Error>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Success<Type, Error>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Type?,
    ));
  }
}

/// @nodoc

class _$_Success<Type, Error> implements _Success<Type, Error> {
  const _$_Success({this.data});

  @override
  final Type? data;

  @override
  String toString() {
    return 'DataState<$Type, $Error>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<Type, Error> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<Type, Error, _Success<Type, Error>> get copyWith =>
      __$SuccessCopyWithImpl<Type, Error, _Success<Type, Error>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type? data) success,
    required TResult Function(Error error) failed,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Type? data)? success,
    TResult Function(Error error)? failed,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type? data)? success,
    TResult Function(Error error)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<Type, Error> value) success,
    required TResult Function(_Failed<Type, Error> value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failed<Type, Error> value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failed<Type, Error> value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<Type, Error> implements DataState<Type, Error> {
  const factory _Success({Type? data}) = _$_Success<Type, Error>;

  Type? get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<Type, Error, _Success<Type, Error>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<Type, Error, $Res> {
  factory _$FailedCopyWith(_Failed<Type, Error> value,
          $Res Function(_Failed<Type, Error>) then) =
      __$FailedCopyWithImpl<Type, Error, $Res>;
  $Res call({Error error});
}

/// @nodoc
class __$FailedCopyWithImpl<Type, Error, $Res>
    extends _$DataStateCopyWithImpl<Type, Error, $Res>
    implements _$FailedCopyWith<Type, Error, $Res> {
  __$FailedCopyWithImpl(
      _Failed<Type, Error> _value, $Res Function(_Failed<Type, Error>) _then)
      : super(_value, (v) => _then(v as _Failed<Type, Error>));

  @override
  _Failed<Type, Error> get _value => super._value as _Failed<Type, Error>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Failed<Type, Error>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$_Failed<Type, Error> implements _Failed<Type, Error> {
  const _$_Failed({required this.error});

  @override
  final Error error;

  @override
  String toString() {
    return 'DataState<$Type, $Error>.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed<Type, Error> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<Type, Error, _Failed<Type, Error>> get copyWith =>
      __$FailedCopyWithImpl<Type, Error, _Failed<Type, Error>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type? data) success,
    required TResult Function(Error error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Type? data)? success,
    TResult Function(Error error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type? data)? success,
    TResult Function(Error error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<Type, Error> value) success,
    required TResult Function(_Failed<Type, Error> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failed<Type, Error> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failed<Type, Error> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed<Type, Error> implements DataState<Type, Error> {
  const factory _Failed({required Error error}) = _$_Failed<Type, Error>;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<Type, Error, _Failed<Type, Error>> get copyWith =>
      throw _privateConstructorUsedError;
}
