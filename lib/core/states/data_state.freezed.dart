// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(Type? data)? success,
    TResult? Function(Error error)? failed,
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
    TResult? Function(_Success<Type, Error> value)? success,
    TResult? Function(_Failed<Type, Error> value)? failed,
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
      _$DataStateCopyWithImpl<Type, Error, $Res, DataState<Type, Error>>;
}

/// @nodoc
class _$DataStateCopyWithImpl<Type, Error, $Res,
        $Val extends DataState<Type, Error>>
    implements $DataStateCopyWith<Type, Error, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<Type, Error, $Res> {
  factory _$$_SuccessCopyWith(_$_Success<Type, Error> value,
          $Res Function(_$_Success<Type, Error>) then) =
      __$$_SuccessCopyWithImpl<Type, Error, $Res>;
  @useResult
  $Res call({Type? data});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<Type, Error, $Res>
    extends _$DataStateCopyWithImpl<Type, Error, $Res, _$_Success<Type, Error>>
    implements _$$_SuccessCopyWith<Type, Error, $Res> {
  __$$_SuccessCopyWithImpl(_$_Success<Type, Error> _value,
      $Res Function(_$_Success<Type, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Success<Type, Error>(
      data: freezed == data
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
        (other.runtimeType == runtimeType &&
            other is _$_Success<Type, Error> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<Type, Error, _$_Success<Type, Error>> get copyWith =>
      __$$_SuccessCopyWithImpl<Type, Error, _$_Success<Type, Error>>(
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
    TResult? Function(Type? data)? success,
    TResult? Function(Error error)? failed,
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
    TResult? Function(_Success<Type, Error> value)? success,
    TResult? Function(_Failed<Type, Error> value)? failed,
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
  const factory _Success({final Type? data}) = _$_Success<Type, Error>;

  Type? get data;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<Type, Error, _$_Success<Type, Error>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<Type, Error, $Res> {
  factory _$$_FailedCopyWith(_$_Failed<Type, Error> value,
          $Res Function(_$_Failed<Type, Error>) then) =
      __$$_FailedCopyWithImpl<Type, Error, $Res>;
  @useResult
  $Res call({Error error});
}

/// @nodoc
class __$$_FailedCopyWithImpl<Type, Error, $Res>
    extends _$DataStateCopyWithImpl<Type, Error, $Res, _$_Failed<Type, Error>>
    implements _$$_FailedCopyWith<Type, Error, $Res> {
  __$$_FailedCopyWithImpl(_$_Failed<Type, Error> _value,
      $Res Function(_$_Failed<Type, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Failed<Type, Error>(
      error: freezed == error
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
        (other.runtimeType == runtimeType &&
            other is _$_Failed<Type, Error> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<Type, Error, _$_Failed<Type, Error>> get copyWith =>
      __$$_FailedCopyWithImpl<Type, Error, _$_Failed<Type, Error>>(
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
    TResult? Function(Type? data)? success,
    TResult? Function(Error error)? failed,
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
    TResult? Function(_Success<Type, Error> value)? success,
    TResult? Function(_Failed<Type, Error> value)? failed,
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
  const factory _Failed({required final Error error}) = _$_Failed<Type, Error>;

  Error get error;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<Type, Error, _$_Failed<Type, Error>> get copyWith =>
      throw _privateConstructorUsedError;
}
