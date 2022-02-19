import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure{
  const factory Failure.firebase({required String message}) = _Firebase;
  const factory Failure.generic({required String message}) = _Generic;
}