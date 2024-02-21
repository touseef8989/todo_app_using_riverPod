import 'package:flutter/material.dart';

import '../data/models/tasks_model.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer(
      {super.key, required this.color, this.task, this.child});
  final Color color;
  final Task? task;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(
              width: 2,
              color: color,
            )),
        child: Center(child: child),
      ),
    );
  }
}
