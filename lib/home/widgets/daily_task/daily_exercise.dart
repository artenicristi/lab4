import 'package:flutter/material.dart';
import '../../controller/exercise_item.dart';

import 'daily_exercise_button.dart';
import 'daily_exercise_content.dart';
import 'daily_exercise_image.dart';

class DailyExercise extends StatelessWidget {
  const DailyExercise({Key? key, required this.exercise}) : super(key: key);

  final ExerciseItem exercise;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0),
      height: 48, //48
      //decoration: BoxDecoration(border: Border.all(color: Colors.red),),
      child: Row(
        children: [
          DailyExerciseImage(cover: exercise.cover),
          const SizedBox(width: 16),
          DailyExerciseContent(
              title: exercise.title,
              durationSeconds: exercise.durationSeconds,
              caloriesCount: exercise.caloriesCount
          ),
          const DailyExerciseButton(),
        ],
      ),
    );
  }
}
