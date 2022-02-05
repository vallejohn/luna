import 'package:luna/features/post/domain/entities/post.dart';

class PostModel extends Post{
  const PostModel({
    required String id,
    required String title,
    required String coverImageURL,
    required String content,
    required int commentCount,
    required Map<String, dynamic> recentComment,
    required Map<String, dynamic> author,
  }) : super(
    id: id,
    title: title,
    coverImageURL: coverImageURL,
    content: content,
    commentCount: commentCount,
    recentComment: recentComment,
    author: author
  );

  factory PostModel.fromJson(Map<String, dynamic> json){
    return PostModel(
        id: json['id'],
        title: json['title'],
        coverImageURL: json['coverImageURL'],
        content: json['content'],
        commentCount: json['commentCount'],
        recentComment: json['recentComment'],
        author: json['author']
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'id' : id,
      'title' : title,
      'coverImageURL' : coverImageURL,
      'content' : content,
      'commentCount' : commentCount,
      'recentComment' : recentComment,
      'author' : author
    };
  }
}