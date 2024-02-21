import 'package:api_riverpoad/utils/extensions.dart';
import 'package:api_riverpoad/widgets/circle_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../data/models/tasks_model.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, this.task, this.onCompleted});
  final Task? task;
  final Function(bool?)? onCompleted;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final style = context.textTheme;
    final double iconOpacity = task!.isCompleted! ? 0.3 : 0.5;
    final backroundOpacity = task!.isCompleted! ? 0.1 : 0.3;
    final textDecoration =
        task!.isCompleted! ? TextDecoration.lineThrough : TextDecoration.none;
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.zero,
            child: CircleContainer(
              color: task!.category!.color.withOpacity(backroundOpacity),
              child: Center(
                child: Icon(
                  task!.category!.icon,
                  color: task!.category!.color.withOpacity(iconOpacity),
                ),
              ),
            ),
          ),
          Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task!.title!,
                  style: style.titleMedium?.copyWith(
                    decoration: textDecoration,
                    fontSize: 20,
                  ),
                ),
                Text(
                  task!.time!,
                  style: style.titleMedium?.copyWith(
                    decoration: textDecoration,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Checkbox(
              value: task!.isCompleted,
              onChanged: (v) {
                if (v == null) {
                  print("check the box");
                } else {
                  print("doo");
                }
              })
        ],
      ),
    );
  }
}
