import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post{
  factory Post({
    @Default('') String id,
    @Default('') String title,
    @Default('') String coverImageURL,
    @Default('') String content,
    Map<String, dynamic>? recentComment,
    Map<String, dynamic>? engagement,
    Map<String, dynamic>? author,
    dynamic createdAt,
    dynamic updatedAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}