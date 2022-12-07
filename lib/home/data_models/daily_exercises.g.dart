// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_exercises.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyExercises _$DailyExercisesFromJson(Map<String, dynamic> json) =>
    DailyExercises(
      title: json['title'] as String,
      cover: json['cover'] as String,
      caloriesCount: json['calories_count'] as int,
      durationSeconds: json['duration_seconds'] as int,
    );

Map<String, dynamic> _$DailyExercisesToJson(DailyExercises instance) =>
    <String, dynamic>{
      'title': instance.title,
      'cover': instance.cover,
      'calories_count': instance.caloriesCount,
      'duration_seconds': instance.durationSeconds,
    };
