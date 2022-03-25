// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Engagement _$$_EngagementFromJson(Map<String, dynamic> json) =>
    _$_Engagement(
      comments: json['comments'] as int? ?? 0,
      likes: json['likes'] as int? ?? 0,
      shares: json['shares'] as int? ?? 0,
    );

Map<String, dynamic> _$$_EngagementToJson(_$_Engagement instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'likes': instance.likes,
      'shares': instance.shares,
    };
