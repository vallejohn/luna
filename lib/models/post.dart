import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post{
  factory Post({
    String? id,
    String? title,
    String? coverImageURL,
    String? content,
    int? commentCount,
    Map<String, dynamic>? recentComment,
    Map<String, dynamic>? author,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}