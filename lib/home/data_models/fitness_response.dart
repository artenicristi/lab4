import 'package:json_annotation/json_annotation.dart';

import 'daily_exercises.dart';
import 'goal.dart';

part 'fitness_response.g.dart';

@JsonSerializable()
class FitnessResponse {
  final List<Goal> goals;
  @JsonKey(name: 'daily_exercises')
  final List<DailyExercises> dailyExercises;

  FitnessResponse(this.goals, this.dailyExercises);

  factory FitnessResponse.fromJson(Map<String, dynamic> json) => _$FitnessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FitnessResponseToJson(this);
}