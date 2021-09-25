import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luna/models/user_profile.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
abstract class Comment with _$Comment{
  factory Comment({
    Map<String, dynamic>? userProfile,
    String? body,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}