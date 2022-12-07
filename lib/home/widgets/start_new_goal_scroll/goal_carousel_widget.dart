import 'package:flutter/material.dart';

import '../../controller/goal_item.dart';
import 'goal_card_widget.dart';

class GoalCarouselWidget extends StatefulWidget {
  const GoalCarouselWidget({super.key, required this.goals});

  final List<GoalItem> goals;

  @override
  State<GoalCarouselWidget> createState() => _GoalCarouselWidgetState();
}

class _GoalCarouselWidgetState extends State<GoalCarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 281,
      margin: const EdgeInsets.only(top: 0),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: PageController(viewportFraction: 0.85), //85
              padEnds: false,
              itemCount: widget.goals.length,
              itemBuilder: (_, i) {
                var goal = widget.goals[i];
                return GoalCardWidget(goal: goal);
              },
            ),
          ),
        ],
      ),
    );
  }
}
