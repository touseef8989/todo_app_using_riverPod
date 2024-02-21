import 'package:api_riverpoad/data/models/tasks_model.dart';
import 'package:api_riverpoad/utils/extensions.dart';
import 'package:api_riverpoad/utils/task_categories.dart';
import 'package:api_riverpoad/widgets/common_container.dart';
import 'package:api_riverpoad/widgets/task_details.dart';
import 'package:api_riverpoad/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          : SingleChildScrollView(
              child: SizedBox(
                height: devicesize.height * 0.25,
                child: ListView.separated(
                  itemCount: tasks.length,
                  itemBuilder: (BuildContext, index) {
                    final task = tasks[index];
                    return InkWell(
                      onLongPress: () {
                        //todo- delete task//
                      },

                      ///toodo-show detials/
                      onTap: () async {
                        await showModalBottomSheet(
                            context: context,
                            builder: (ctx) {
                              return TaskDetials(task: task);
                            });
                      },
                      child: TaskTile(
                        task: task,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      thickness: 1.5,
                    );
                  },
                ),
              ),
            ),
    );
  }
}
