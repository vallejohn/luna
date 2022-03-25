// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      coverImageURL: json['coverImageURL'] as String? ?? '',
      content: json['content'] as String? ?? '',
      recentComment: json['recentComment'] as Map<String, dynamic>?,
      engagement: json['engagement'] as Map<String, dynamic>?,
      author: json['author'] as Map<String, dynamic>?,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImageURL': instance.coverImageURL,
      'content': instance.content,
      'recentComment': instance.recentComment,
      'engagement': instance.engagement,
      'author': instance.author,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
