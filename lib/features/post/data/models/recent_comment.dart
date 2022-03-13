import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_comment.freezed.dart';
part 'recent_comment.g.dart';

@freezed
abstract class RecentComment with _$RecentComment{
  factory RecentComment({
    Map<String, dynamic>? recentComment,
    @Default(0) int commentCount
  }) = _RecentComment;

  factory RecentComment.fromJson(Map<String, dynamic> json) => _$RecentCommentFromJson(json);
}