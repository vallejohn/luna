// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      title: json['title'] as String?,
      content: json['content'] as String?,
      commentCount: json['commentCount'] as int?,
      recentComment: json['recentComment'] as Map<String, dynamic>?,
      author: json['author'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'commentCount': instance.commentCount,
      'recentComment': instance.recentComment,
      'author': instance.author,
    };
