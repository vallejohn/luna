// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SignInWithEmailAndPassword signInWithEmailAndPassword(
      {required LoginCredentials emailAndPassword}) {
    return _SignInWithEmailAndPassword(
      emailAndPassword: emailAndPassword,
    );
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginCredentials emailAndPassword)
        signInWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginCredentials emailAndPassword)?
        signInWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginCredentials emailAndPassword)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
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
    return 'LoginEvent.started()';
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
    required TResult Function(LoginCredentials emailAndPassword)
        signInWithEmailAndPassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginCredentials emailAndPassword)?
        signInWithEmailAndPassword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginCredentials emailAndPassword)?
        signInWithEmailAndPassword,
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
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordCopyWith(
          _SignInWithEmailAndPassword value,
          $Res Function(_SignInWithEmailAndPassword) then) =
      __$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({LoginCredentials emailAndPassword});
}

/// @nodoc
class __$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordCopyWith<$Res> {
  __$SignInWithEmailAndPasswordCopyWithImpl(_SignInWithEmailAndPassword _value,
      $Res Function(_SignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPassword));

  @override
  _SignInWithEmailAndPassword get _value =>
      super._value as _SignInWithEmailAndPassword;

  @override
  $Res call({
    Object? emailAndPassword = freezed,
  }) {
    return _then(_SignInWithEmailAndPassword(
      emailAndPassword: emailAndPassword == freezed
          ? _value.emailAndPassword
          : emailAndPassword // ignore: cast_nullable_to_non_nullable
              as LoginCredentials,
    ));
  }
}

/// @nodoc

class _$_SignInWithEmailAndPassword implements _SignInWithEmailAndPassword {
  const _$_SignInWithEmailAndPassword({required this.emailAndPassword});

  @override
  final LoginCredentials emailAndPassword;

  @override
  String toString() {
    return 'LoginEvent.signInWithEmailAndPassword(emailAndPassword: $emailAndPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInWithEmailAndPassword &&
            const DeepCollectionEquality()
                .equals(other.emailAndPassword, emailAndPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailAndPassword));

  @JsonKey(ignore: true)
  @override
  _$SignInWithEmailAndPasswordCopyWith<_SignInWithEmailAndPassword>
      get copyWith => __$SignInWithEmailAndPasswordCopyWithImpl<
          _SignInWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginCredentials emailAndPassword)
        signInWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword(emailAndPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginCredentials emailAndPassword)?
        signInWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword?.call(emailAndPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginCredentials emailAndPassword)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(emailAndPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements LoginEvent {
  const factory _SignInWithEmailAndPassword(
          {required LoginCredentials emailAndPassword}) =
      _$_SignInWithEmailAndPassword;

  LoginCredentials get emailAndPassword;
  @JsonKey(ignore: true)
  _$SignInWithEmailAndPasswordCopyWith<_SignInWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoggingIn loggingIn() {
    return const _LoggingIn();
  }

  _Success success() {
    return const _Success();
  }

  _EmailFailure emailFailure({required String message}) {
    return _EmailFailure(
      message: message,
    );
  }

  _PasswordFailure passwordFailure({required String message}) {
    return _PasswordFailure(
      message: message,
    );
  }

  _Failed failed({required String message}) {
    return _Failed(
      message: message,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() success,
    required TResult Function(String message) emailFailure,
    required TResult Function(String message) passwordFailure,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailFailure value) emailFailure,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
    return 'LoginState.initial()';
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
    required TResult Function() loggingIn,
    required TResult Function() success,
    required TResult Function(String message) emailFailure,
    required TResult Function(String message) passwordFailure,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
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
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailFailure value) emailFailure,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoggingInCopyWith<$Res> {
  factory _$LoggingInCopyWith(
          _LoggingIn value, $Res Function(_LoggingIn) then) =
      __$LoggingInCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoggingInCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoggingInCopyWith<$Res> {
  __$LoggingInCopyWithImpl(_LoggingIn _value, $Res Function(_LoggingIn) _then)
      : super(_value, (v) => _then(v as _LoggingIn));

  @override
  _LoggingIn get _value => super._value as _LoggingIn;
}

/// @nodoc

class _$_LoggingIn implements _LoggingIn {
  const _$_LoggingIn();

  @override
  String toString() {
    return 'LoginState.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoggingIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() success,
    required TResult Function(String message) emailFailure,
    required TResult Function(String message) passwordFailure,
    required TResult Function(String message) failed,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailFailure value) emailFailure,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_Failed value) failed,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class _LoggingIn implements LoginState {
  const factory _LoggingIn() = _$_LoggingIn;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() success,
    required TResult Function(String message) emailFailure,
    required TResult Function(String message) passwordFailure,
    required TResult Function(String message) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailFailure value) emailFailure,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$EmailFailureCopyWith<$Res> {
  factory _$EmailFailureCopyWith(
          _EmailFailure value, $Res Function(_EmailFailure) then) =
      __$EmailFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$EmailFailureCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$EmailFailureCopyWith<$Res> {
  __$EmailFailureCopyWithImpl(
      _EmailFailure _value, $Res Function(_EmailFailure) _then)
      : super(_value, (v) => _then(v as _EmailFailure));

  @override
  _EmailFailure get _value => super._value as _EmailFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_EmailFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailFailure implements _EmailFailure {
  const _$_EmailFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.emailFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$EmailFailureCopyWith<_EmailFailure> get copyWith =>
      __$EmailFailureCopyWithImpl<_EmailFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() success,
    required TResult Function(String message) emailFailure,
    required TResult Function(String message) passwordFailure,
    required TResult Function(String message) failed,
  }) {
    return emailFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
  }) {
    return emailFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (emailFailure != null) {
      return emailFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailFailure value) emailFailure,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_Failed value) failed,
  }) {
    return emailFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
  }) {
    return emailFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (emailFailure != null) {
      return emailFailure(this);
    }
    return orElse();
  }
}

abstract class _EmailFailure implements LoginState {
  const factory _EmailFailure({required String message}) = _$_EmailFailure;

  String get message;
  @JsonKey(ignore: true)
  _$EmailFailureCopyWith<_EmailFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordFailureCopyWith<$Res> {
  factory _$PasswordFailureCopyWith(
          _PasswordFailure value, $Res Function(_PasswordFailure) then) =
      __$PasswordFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$PasswordFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$PasswordFailureCopyWith<$Res> {
  __$PasswordFailureCopyWithImpl(
      _PasswordFailure _value, $Res Function(_PasswordFailure) _then)
      : super(_value, (v) => _then(v as _PasswordFailure));

  @override
  _PasswordFailure get _value => super._value as _PasswordFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_PasswordFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordFailure implements _PasswordFailure {
  const _$_PasswordFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.passwordFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$PasswordFailureCopyWith<_PasswordFailure> get copyWith =>
      __$PasswordFailureCopyWithImpl<_PasswordFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() success,
    required TResult Function(String message) emailFailure,
    required TResult Function(String message) passwordFailure,
    required TResult Function(String message) failed,
  }) {
    return passwordFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
  }) {
    return passwordFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (passwordFailure != null) {
      return passwordFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailFailure value) emailFailure,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_Failed value) failed,
  }) {
    return passwordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
  }) {
    return passwordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (passwordFailure != null) {
      return passwordFailure(this);
    }
    return orElse();
  }
}

abstract class _PasswordFailure implements LoginState {
  const factory _PasswordFailure({required String message}) =
      _$_PasswordFailure;

  String get message;
  @JsonKey(ignore: true)
  _$PasswordFailureCopyWith<_PasswordFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Failed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() success,
    required TResult Function(String message) emailFailure,
    required TResult Function(String message) passwordFailure,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? success,
    TResult Function(String message)? emailFailure,
    TResult Function(String message)? passwordFailure,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailFailure value) emailFailure,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_Success value)? success,
    TResult Function(_EmailFailure value)? emailFailure,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements LoginState {
  const factory _Failed({required String message}) = _$_Failed;

  String get message;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
