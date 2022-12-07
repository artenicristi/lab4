import 'package:json_annotation/json_annotation.dart';

part 'goal.g.dart';

@JsonSerializable()
class Goal {
  final String cover;
  final String title;
  @JsonKey(name: 'sub_title')
  final String subTitle;
  @JsonKey(name: 'calories_count')
  final int caloriesCount;
  @JsonKey(name: 'duration_seconds')
  final int durationSeconds;

  Goal({
    required this.cover,
    required this.title,
    required this.subTitle,
    required this.caloriesCount,
    required this.durationSeconds
  });

  factory Goal.fromJson(Map<String, dynamic> json)
                => _$GoalFromJson(json);

  Map<String, dynamic> toJson() => _$GoalToJson(this);
}