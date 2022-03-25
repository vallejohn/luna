import 'package:freezed_annotation/freezed_annotation.dart';

part 'like.freezed.dart';
part 'like.g.dart';

@freezed
abstract class Like with _$Like{
  factory Like({
    Map<String, dynamic>? userProfile,
  }) = _Like;

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);
}