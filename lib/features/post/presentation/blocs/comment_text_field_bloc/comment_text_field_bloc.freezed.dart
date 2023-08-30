// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_text_field_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentTextFieldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnChanged value) onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnChanged value)? onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnChanged value)? onChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentTextFieldEventCopyWith<$Res> {
  factory $CommentTextFieldEventCopyWith(CommentTextFieldEvent value,
          $Res Function(CommentTextFieldEvent) then) =
      _$CommentTextFieldEventCopyWithImpl<$Res, CommentTextFieldEvent>;
}

/// @nodoc
class _$CommentTextFieldEventCopyWithImpl<$Res,
        $Val extends CommentTextFieldEvent>
    implements $CommentTextFieldEventCopyWith<$Res> {
  _$CommentTextFieldEventCopyWithImpl(this._value, this._then);

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
    extends _$CommentTextFieldEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CommentTextFieldEvent.started()';
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
    required TResult Function(String value) onChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? onChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onChanged,
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
    required TResult Function(_OnChanged value) onChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnChanged value)? onChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnChanged value)? onChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommentTextFieldEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OnChangedCopyWith<$Res> {
  factory _$$_OnChangedCopyWith(
          _$_OnChanged value, $Res Function(_$_OnChanged) then) =
      __$$_OnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_OnChangedCopyWithImpl<$Res>
    extends _$CommentTextFieldEventCopyWithImpl<$Res, _$_OnChanged>
    implements _$$_OnChangedCopyWith<$Res> {
  __$$_OnChangedCopyWithImpl(
      _$_OnChanged _value, $Res Function(_$_OnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_OnChanged(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnChanged implements _OnChanged {
  const _$_OnChanged({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CommentTextFieldEvent.onChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnChangedCopyWith<_$_OnChanged> get copyWith =>
      __$$_OnChangedCopyWithImpl<_$_OnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) onChanged,
  }) {
    return onChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? onChanged,
  }) {
    return onChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onChanged,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnChanged value) onChanged,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnChanged value)? onChanged,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnChanged value)? onChanged,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class _OnChanged implements CommentTextFieldEvent {
  const factory _OnChanged({required final String value}) = _$_OnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_OnChangedCopyWith<_$_OnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentTextFieldState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNotEmpty,
    required TResult Function() isEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isNotEmpty,
    TResult? Function()? isEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNotEmpty,
    TResult Function()? isEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsNotEmpty value) isNotEmpty,
    required TResult Function(_IsEmpty value) isEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsNotEmpty value)? isNotEmpty,
    TResult? Function(_IsEmpty value)? isEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsNotEmpty value)? isNotEmpty,
    TResult Function(_IsEmpty value)? isEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentTextFieldStateCopyWith<$Res> {
  factory $CommentTextFieldStateCopyWith(CommentTextFieldState value,
          $Res Function(CommentTextFieldState) then) =
      _$CommentTextFieldStateCopyWithImpl<$Res, CommentTextFieldState>;
}

/// @nodoc
class _$CommentTextFieldStateCopyWithImpl<$Res,
        $Val extends CommentTextFieldState>
    implements $CommentTextFieldStateCopyWith<$Res> {
  _$CommentTextFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IsNotEmptyCopyWith<$Res> {
  factory _$$_IsNotEmptyCopyWith(
          _$_IsNotEmpty value, $Res Function(_$_IsNotEmpty) then) =
      __$$_IsNotEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsNotEmptyCopyWithImpl<$Res>
    extends _$CommentTextFieldStateCopyWithImpl<$Res, _$_IsNotEmpty>
    implements _$$_IsNotEmptyCopyWith<$Res> {
  __$$_IsNotEmptyCopyWithImpl(
      _$_IsNotEmpty _value, $Res Function(_$_IsNotEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsNotEmpty implements _IsNotEmpty {
  const _$_IsNotEmpty();

  @override
  String toString() {
    return 'CommentTextFieldState.isNotEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsNotEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNotEmpty,
    required TResult Function() isEmpty,
  }) {
    return isNotEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isNotEmpty,
    TResult? Function()? isEmpty,
  }) {
    return isNotEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNotEmpty,
    TResult Function()? isEmpty,
    required TResult orElse(),
  }) {
    if (isNotEmpty != null) {
      return isNotEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsNotEmpty value) isNotEmpty,
    required TResult Function(_IsEmpty value) isEmpty,
  }) {
    return isNotEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsNotEmpty value)? isNotEmpty,
    TResult? Function(_IsEmpty value)? isEmpty,
  }) {
    return isNotEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsNotEmpty value)? isNotEmpty,
    TResult Function(_IsEmpty value)? isEmpty,
    required TResult orElse(),
  }) {
    if (isNotEmpty != null) {
      return isNotEmpty(this);
    }
    return orElse();
  }
}

abstract class _IsNotEmpty implements CommentTextFieldState {
  const factory _IsNotEmpty() = _$_IsNotEmpty;
}

/// @nodoc
abstract class _$$_IsEmptyCopyWith<$Res> {
  factory _$$_IsEmptyCopyWith(
          _$_IsEmpty value, $Res Function(_$_IsEmpty) then) =
      __$$_IsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsEmptyCopyWithImpl<$Res>
    extends _$CommentTextFieldStateCopyWithImpl<$Res, _$_IsEmpty>
    implements _$$_IsEmptyCopyWith<$Res> {
  __$$_IsEmptyCopyWithImpl(_$_IsEmpty _value, $Res Function(_$_IsEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsEmpty implements _IsEmpty {
  const _$_IsEmpty();

  @override
  String toString() {
    return 'CommentTextFieldState.isEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNotEmpty,
    required TResult Function() isEmpty,
  }) {
    return isEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isNotEmpty,
    TResult? Function()? isEmpty,
  }) {
    return isEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNotEmpty,
    TResult Function()? isEmpty,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsNotEmpty value) isNotEmpty,
    required TResult Function(_IsEmpty value) isEmpty,
  }) {
    return isEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsNotEmpty value)? isNotEmpty,
    TResult? Function(_IsEmpty value)? isEmpty,
  }) {
    return isEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsNotEmpty value)? isNotEmpty,
    TResult Function(_IsEmpty value)? isEmpty,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty(this);
    }
    return orElse();
  }
}

abstract class _IsEmpty implements CommentTextFieldState {
  const factory _IsEmpty() = _$_IsEmpty;
}
