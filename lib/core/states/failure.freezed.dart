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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  FirebaseException get firebaseException => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseException firebaseException) firebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirebaseException firebaseException)? firebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseException firebaseException)? firebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firebase value) firebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
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
  $Res call({FirebaseException firebaseException});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? firebaseException = freezed,
  }) {
    return _then(_value.copyWith(
      firebaseException: firebaseException == freezed
          ? _value.firebaseException
          : firebaseException // ignore: cast_nullable_to_non_nullable
              as FirebaseException,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$FirebaseCopyWith(_Firebase value, $Res Function(_Firebase) then) =
      __$FirebaseCopyWithImpl<$Res>;
  @override
  $Res call({FirebaseException firebaseException});
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
    Object? firebaseException = freezed,
  }) {
    return _then(_Firebase(
      firebaseException == freezed
          ? _value.firebaseException
          : firebaseException // ignore: cast_nullable_to_non_nullable
              as FirebaseException,
    ));
  }
}

/// @nodoc

class _$_Firebase implements _Firebase {
  const _$_Firebase(this.firebaseException);

  @override
  final FirebaseException firebaseException;

  @override
  String toString() {
    return 'Failure.firebase(firebaseException: $firebaseException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Firebase &&
            const DeepCollectionEquality()
                .equals(other.firebaseException, firebaseException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(firebaseException));

  @JsonKey(ignore: true)
  @override
  _$FirebaseCopyWith<_Firebase> get copyWith =>
      __$FirebaseCopyWithImpl<_Firebase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseException firebaseException) firebase,
  }) {
    return firebase(firebaseException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirebaseException firebaseException)? firebase,
  }) {
    return firebase?.call(firebaseException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseException firebaseException)? firebase,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(firebaseException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firebase value) firebase,
  }) {
    return firebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
  }) {
    return firebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(this);
    }
    return orElse();
  }
}

abstract class _Firebase implements Failure {
  const factory _Firebase(final FirebaseException firebaseException) =
      _$_Firebase;

  @override
  FirebaseException get firebaseException => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirebaseCopyWith<_Firebase> get copyWith =>
      throw _privateConstructorUsedError;
}
