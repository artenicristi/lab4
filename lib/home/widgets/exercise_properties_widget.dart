import 'package:flutter/material.dart';

import '../../../resources/text_styles.dart';

class ExercisePropertiesWidget extends StatelessWidget {
  const ExercisePropertiesWidget({
    super.key,
    required this.icon,
    required this.content,
    required this.color,
    this.fontWeight = FontWeight.w500});

  final String content;
  final Widget icon;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        icon,
        Text(content,
          style: TextStyles.poppins14(color: color, fontWeight: fontWeight),
        )
      ],
    );
  }
}
