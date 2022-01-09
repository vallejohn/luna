import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<Type, Error> with _$DataState{
  const factory DataState.success({Type? data}) = _Success;
  const factory DataState.failed({required Error error}) = _Failed;
}