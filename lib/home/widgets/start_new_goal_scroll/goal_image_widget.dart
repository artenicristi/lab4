import 'package:flutter/material.dart';

class GoalImageWidget extends StatelessWidget {
  const GoalImageWidget({Key? key, required this.cover}) : super(key: key);

  final String cover;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 144,
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(24),
      ),
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: NetworkImage(cover),
          fit: BoxFit.fill
        ),
      ),
    );
  }
}

