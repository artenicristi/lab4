// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goal _$GoalFromJson(Map<String, dynamic> json) => Goal(
      cover: json['cover'] as String,
      title: json['title'] as String,
      subTitle: json['sub_title'] as String,
      caloriesCount: json['calories_count'] as int,
      durationSeconds: json['duration_seconds'] as int,
    );

Map<String, dynamic> _$GoalToJson(Goal instance) => <String, dynamic>{
      'cover': instance.cover,
      'title': instance.title,
      'sub_title': instance.subTitle,
      'calories_count': instance.caloriesCount,
      'duration_seconds': instance.durationSeconds,
    };
