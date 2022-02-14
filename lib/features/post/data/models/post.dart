import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post{
  factory Post({
    @Default('') String id,
    @Default('') String title,
    @Default('') String coverImageURL,
    @Default('') String content,
    @Default(0) int commentCount,
    Map<String, dynamic>? recentComment,
    UserProfile? author,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}