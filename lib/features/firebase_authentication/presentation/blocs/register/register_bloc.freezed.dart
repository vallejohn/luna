// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    TResult? Function()? started,
    TResult? Function(SignUpCredentials credentials)?
        signUpWithEmailAndPassword,
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
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUpWithEmailAndPassword value)?
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
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

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
    extends _$RegisterEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_Started);
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
    TResult? Function()? started,
    TResult? Function(SignUpCredentials credentials)?
        signUpWithEmailAndPassword,
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
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUpWithEmailAndPassword value)?
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
abstract class _$$_SignUpWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_SignUpWithEmailAndPasswordCopyWith(
          _$_SignUpWithEmailAndPassword value,
          $Res Function(_$_SignUpWithEmailAndPassword) then) =
      __$$_SignUpWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpCredentials credentials});
}

/// @nodoc
class __$$_SignUpWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_SignUpWithEmailAndPassword>
    implements _$$_SignUpWithEmailAndPasswordCopyWith<$Res> {
  __$$_SignUpWithEmailAndPasswordCopyWithImpl(
      _$_SignUpWithEmailAndPassword _value,
      $Res Function(_$_SignUpWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
  }) {
    return _then(_$_SignUpWithEmailAndPassword(
      credentials: null == credentials
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
            other is _$_SignUpWithEmailAndPassword &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpWithEmailAndPasswordCopyWith<_$_SignUpWithEmailAndPassword>
      get copyWith => __$$_SignUpWithEmailAndPasswordCopyWithImpl<
          _$_SignUpWithEmailAndPassword>(this, _$identity);

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
    TResult? Function()? started,
    TResult? Function(SignUpCredentials credentials)?
        signUpWithEmailAndPassword,
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
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUpWithEmailAndPassword value)?
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

  SignUpCredentials get credentials;
  @JsonKey(ignore: true)
  _$$_SignUpWithEmailAndPasswordCopyWith<_$_SignUpWithEmailAndPassword>
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
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {RegisterStatus status,
      Account? account,
      String message,
      RegisterError registerError});

  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? account = freezed,
    Object? message = null,
    Object? registerError = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      registerError: null == registerError
          ? _value.registerError
          : registerError // ignore: cast_nullable_to_non_nullable
              as RegisterError,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegisterStatus status,
      Account? account,
      String message,
      RegisterError registerError});

  @override
  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? account = freezed,
    Object? message = null,
    Object? registerError = null,
  }) {
    return _then(_$_RegisterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      registerError: null == registerError
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
            other is _$_RegisterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.registerError, registerError) ||
                other.registerError == registerError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, account, message, registerError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final RegisterStatus status,
      final Account? account,
      final String message,
      final RegisterError registerError}) = _$_RegisterState;

  @override
  RegisterStatus get status;
  @override
  Account? get account;
  @override
  String get message;
  @override
  RegisterError get registerError;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
