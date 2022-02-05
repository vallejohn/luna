import 'package:equatable/equatable.dart';

class Post extends Equatable{
  final String id;
  final String title;
  final String coverImageURL;
  final String content;
  final int commentCount;
  final Map<String, dynamic> recentComment;
  final Map<String, dynamic> author;

  const Post({
    required this.id,
    required this.title,
    required this.coverImageURL,
    required this.content,
    required this.commentCount,
    required this.recentComment,
    required this.author
  });

  @override
  List<Object?> get props => [
    id,
    title,
    coverImageURL,
    content,
    commentCount,
    recentComment,
    author
  ];
}