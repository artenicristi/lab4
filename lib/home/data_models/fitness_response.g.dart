// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitness_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FitnessResponse _$FitnessResponseFromJson(Map<String, dynamic> json) =>
    FitnessResponse(
      (json['goals'] as List<dynamic>)
          .map((e) => Goal.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['daily_exercises'] as List<dynamic>)
          .map((e) => DailyExercises.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FitnessResponseToJson(FitnessResponse instance) =>
    <String, dynamic>{
      'goals': instance.goals,
      'daily_exercises': instance.dailyExercises,
    };
