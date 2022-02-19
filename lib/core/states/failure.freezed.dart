// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _Firebase firebase({required String message}) {
    return _Firebase(
      message: message,
    );
  }

  _Generic generic({required String message}) {
    return _Generic(
      message: message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebase,
    required TResult Function(String message) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? firebase,
    TResult Function(String message)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebase,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firebase value) firebase,
    required TResult Function(_Generic value) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_Generic value)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_Generic value)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$FirebaseCopyWith(_Firebase value, $Res Function(_Firebase) then) =
      __$FirebaseCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$FirebaseCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$FirebaseCopyWith<$Res> {
  __$FirebaseCopyWithImpl(_Firebase _value, $Res Function(_Firebase) _then)
      : super(_value, (v) => _then(v as _Firebase));

  @override
  _Firebase get _value => super._value as _Firebase;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Firebase(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Firebase implements _Firebase {
  const _$_Firebase({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.firebase(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Firebase &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$FirebaseCopyWith<_Firebase> get copyWith =>
      __$FirebaseCopyWithImpl<_Firebase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebase,
    required TResult Function(String message) generic,
  }) {
    return firebase(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? firebase,
    TResult Function(String message)? generic,
  }) {
    return firebase?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebase,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firebase value) firebase,
    required TResult Function(_Generic value) generic,
  }) {
    return firebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_Generic value)? generic,
  }) {
    return firebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_Generic value)? generic,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(this);
    }
    return orElse();
  }
}

abstract class _Firebase implements Failure {
  const factory _Firebase({required String message}) = _$_Firebase;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$FirebaseCopyWith<_Firebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenericCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$GenericCopyWith(_Generic value, $Res Function(_Generic) then) =
      __$GenericCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$GenericCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$GenericCopyWith<$Res> {
  __$GenericCopyWithImpl(_Generic _value, $Res Function(_Generic) _then)
      : super(_value, (v) => _then(v as _Generic));

  @override
  _Generic get _value => super._value as _Generic;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Generic(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Generic implements _Generic {
  const _$_Generic({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.generic(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Generic &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$GenericCopyWith<_Generic> get copyWith =>
      __$GenericCopyWithImpl<_Generic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebase,
    required TResult Function(String message) generic,
  }) {
    return generic(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? firebase,
    TResult Function(String message)? generic,
  }) {
    return generic?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebase,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firebase value) firebase,
    required TResult Function(_Generic value) generic,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_Generic value)? generic,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_Generic value)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }
}

abstract class _Generic implements Failure {
  const factory _Generic({required String message}) = _$_Generic;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$GenericCopyWith<_Generic> get copyWith =>
      throw _privateConstructorUsedError;
}
