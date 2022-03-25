import 'package:freezed_annotation/freezed_annotation.dart';

part 'engagement.freezed.dart';
part 'engagement.g.dart';

@freezed
abstract class Engagement with _$Engagement{
  factory Engagement({
    @Default(0) int comments,
    @Default(0) int likes,
    @Default(0) int shares,
  }) = _Engagement;

  factory Engagement.fromJson(Map<String, dynamic> json) => _$EngagementFromJson(json);
}