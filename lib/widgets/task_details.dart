import 'package:api_riverpoad/data/models/tasks_model.dart';
import 'package:api_riverpoad/utils/extensions.dart';
import 'package:api_riverpoad/widgets/circle_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:path/path.dart';

class TaskDetials extends StatelessWidget {
  const TaskDetials({super.key, this.task});
  final Task? task;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;

    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          CircleContainer(
            color: task!.category!.color.withOpacity(0.3),
            child: Icon(
              task!.category!.icon,
              color: task!.category!.color,
            ),
          ),
          Gap(16),
          Text(
            task!.title!,
            style: style.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(task!.time!, style: style.titleMedium!),
          Gap(16),
          Visibility(
            visible: task!.isCompleted!,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "task to be completed on ${task!.date}",
                ),
                Icon(
                  Icons.check_box,
                  color: task!.category!.color,
                )
              ],
            ),
          ),
          Gap(16),
          Divider(
            thickness: 1.5,
            color: task!.category!.color,
          ),
          Text(
            task!.note!.isEmpty
                ? ' There no additional note for this week'
                : task!.note!,
          ),
          Gap(16),
          Visibility(
            visible: task!.isCompleted!,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "task completed",
                ),
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
