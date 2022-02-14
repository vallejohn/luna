// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String?,
      title: json['title'] as String? ?? '',
      coverImageURL: json['coverImageURL'] as String? ?? '',
      content: json['content'] as String? ?? '',
      commentCount: json['commentCount'] as int? ?? 0,
      recentComment: json['recentComment'] as Map<String, dynamic>?,
      author: json['author'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImageURL': instance.coverImageURL,
      'content': instance.content,
      'commentCount': instance.commentCount,
      'recentComment': instance.recentComment,
      'author': instance.author,
    };
