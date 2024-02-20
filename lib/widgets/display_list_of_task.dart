import 'package:api_riverpoad/data/models/tasks_model.dart';
import 'package:api_riverpoad/utils/extensions.dart';
import 'package:api_riverpoad/widgets/common_container.dart';
import 'package:flutter/material.dart';

class DisplayListOfTask extends StatelessWidget {
  const DisplayListOfTask(
      {super.key, required this.tasks, required this.isCompletedTasks});
  final List<Task> tasks;
  final bool isCompletedTasks;

  @override
  Widget build(BuildContext context) {
    final devicesize = context.deviceSize;

    final height =
        isCompletedTasks ? devicesize.height * 0.25 : devicesize.height * 0.3;
    final emptytasksmessage = isCompletedTasks
        ? 'There is no completed tast yet'
        : 'There is no task todo';
    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Text(
                emptytasksmessage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Text("Home");
              }),
    );
  }
}
