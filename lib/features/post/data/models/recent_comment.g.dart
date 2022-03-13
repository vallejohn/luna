// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecentComment _$$_RecentCommentFromJson(Map<String, dynamic> json) =>
    _$_RecentComment(
      recentComment: json['recentComment'] as Map<String, dynamic>?,
      commentCount: json['commentCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_RecentCommentToJson(_$_RecentComment instance) =>
    <String, dynamic>{
      'recentComment': instance.recentComment,
      'commentCount': instance.commentCount,
    };
