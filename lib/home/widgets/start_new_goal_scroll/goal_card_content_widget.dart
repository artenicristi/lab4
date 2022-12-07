import 'package:flutter/material.dart';

import '../../controller/goal_item.dart';
import 'goal_time_cal_container.dart';
import 'goal_image_widget.dart';
import 'goal_title_description_widget.dart';

class GoalContentWidget extends StatelessWidget {
  const GoalContentWidget({Key? key, required this.goal}) : super(key: key);

  final GoalItem goal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GoalImageWidget(cover: goal.cover),
        GoalTitleDescriptionWidget(title: goal.title, subTitle: goal.subTitle),
        GoalTimeCalContainer(caloriesCount: goal.caloriesCount, durationSeconds: goal.durationSeconds),
      ],
    );
  }
}
