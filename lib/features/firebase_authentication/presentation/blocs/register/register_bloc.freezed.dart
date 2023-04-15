// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignUpCredentials credentials)
        signUpWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignUpCredentials credentials)? signUpWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignUpCredentials credentials)? signUpWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.started()';
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
    required TResult Function(SignUpCredentials credentials)
        signUpWithEmailAndPassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignUpCredentials credentials)? signUpWithEmailAndPassword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignUpCredentials credentials)? signUpWithEmailAndPassword,
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
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RegisterEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SignUpWithEmailAndPasswordCopyWith<$Res> {
  factory _$SignUpWithEmailAndPasswordCopyWith(
          _SignUpWithEmailAndPassword value,
          $Res Function(_SignUpWithEmailAndPassword) then) =
      __$SignUpWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({SignUpCredentials credentials});
}

/// @nodoc
class __$SignUpWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$SignUpWithEmailAndPasswordCopyWith<$Res> {
  __$SignUpWithEmailAndPasswordCopyWithImpl(_SignUpWithEmailAndPassword _value,
      $Res Function(_SignUpWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _SignUpWithEmailAndPassword));

  @override
  _SignUpWithEmailAndPassword get _value =>
      super._value as _SignUpWithEmailAndPassword;

  @override
  $Res call({
    Object? credentials = freezed,
  }) {
    return _then(_SignUpWithEmailAndPassword(
      credentials: credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as SignUpCredentials,
    ));
  }
}

/// @nodoc

class _$_SignUpWithEmailAndPassword implements _SignUpWithEmailAndPassword {
  const _$_SignUpWithEmailAndPassword({required this.credentials});

  @override
  final SignUpCredentials credentials;

  @override
  String toString() {
    return 'RegisterEvent.signUpWithEmailAndPassword(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpWithEmailAndPassword &&
            const DeepCollectionEquality()
                .equals(other.credentials, credentials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(credentials));

  @JsonKey(ignore: true)
  @override
  _$SignUpWithEmailAndPasswordCopyWith<_SignUpWithEmailAndPassword>
      get copyWith => __$SignUpWithEmailAndPasswordCopyWithImpl<
          _SignUpWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignUpCredentials credentials)
        signUpWithEmailAndPassword,
  }) {
    return signUpWithEmailAndPassword(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignUpCredentials credentials)? signUpWithEmailAndPassword,
  }) {
    return signUpWithEmailAndPassword?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignUpCredentials credentials)? signUpWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
  }) {
    return signUpWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
  }) {
    return signUpWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmailAndPassword implements RegisterEvent {
  const factory _SignUpWithEmailAndPassword(
          {required final SignUpCredentials credentials}) =
      _$_SignUpWithEmailAndPassword;

  SignUpCredentials get credentials => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignUpWithEmailAndPasswordCopyWith<_SignUpWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  RegisterStatus get status => throw _privateConstructorUsedError;
  Account? get account => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  RegisterError get registerError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {RegisterStatus status,
      Account? account,
      String message,
      RegisterError registerError});

  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? account = freezed,
    Object? message = freezed,
    Object? registerError = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      registerError: registerError == freezed
          ? _value.registerError
          : registerError // ignore: cast_nullable_to_non_nullable
              as RegisterError,
    ));
  }

  @override
  $AccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RegisterStatus status,
      Account? account,
      String message,
      RegisterError registerError});

  @override
  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? status = freezed,
    Object? account = freezed,
    Object? message = freezed,
    Object? registerError = freezed,
  }) {
    return _then(_RegisterState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      registerError: registerError == freezed
          ? _value.registerError
          : registerError // ignore: cast_nullable_to_non_nullable
              as RegisterError,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {this.status = RegisterStatus.initial,
      this.account,
      this.message = '',
      this.registerError = RegisterError.unknown});

  @override
  @JsonKey()
  final RegisterStatus status;
  @override
  final Account? account;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final RegisterError registerError;

  @override
  String toString() {
    return 'RegisterState(status: $status, account: $account, message: $message, registerError: $registerError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.registerError, registerError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(registerError));

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final RegisterStatus status,
      final Account? account,
      final String message,
      final RegisterError registerError}) = _$_RegisterState;

  @override
  RegisterStatus get status => throw _privateConstructorUsedError;
  @override
  Account? get account => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  RegisterError get registerError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
