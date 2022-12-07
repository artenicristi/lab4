import 'package:json_annotation/json_annotation.dart';

part 'daily_exercises.g.dart';

@JsonSerializable()
class DailyExercises {
  final String title;
  final String cover;
  @JsonKey(name: 'calories_count')
  final int caloriesCount;
  @JsonKey(name: 'duration_seconds')
  final int durationSeconds;

  DailyExercises({
    required this.title,
    required this.cover,
    required this.caloriesCount,
    required this.durationSeconds
  });

  factory DailyExercises.fromJson(Map<String, dynamic> json) => _$DailyExercisesFromJson(json);

  Map<String, dynamic> toJson() => _$DailyExercisesToJson(this);
}