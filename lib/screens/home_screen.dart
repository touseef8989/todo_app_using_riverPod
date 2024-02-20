import 'package:api_riverpoad/utils/extensions.dart';
import 'package:api_riverpoad/widgets/common_container.dart';
import 'package:api_riverpoad/widgets/display_list_of_task.dart';
import 'package:api_riverpoad/widgets/display_whtie_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //import from extensions/
    final colors = context.colorScheme;
    final devicesize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: devicesize.height * 0.3,
                width: devicesize.width,
                color: colors.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gap(30),
                    DisplayWhiteText(
                      text: "Aug 7, 2023",
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    // Gap(20),
                    DisplayWhiteText(
                      text: "My Todo List",
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ],
          ),

          ///scroll able liste/

          Positioned(
              top: 130,
              left: 0,
              right: 0,
              child: SafeArea(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      DisplayListOfTask(
                        isCompletedTasks: true,
                        tasks: [],
                      ),
                      Gap(20),
                      Text(
                        "completed",
                        style: context.textTheme.headlineMedium,
                      ),
                      Gap(20),
                      DisplayListOfTask(
                        tasks: [],
                        isCompletedTasks: true,
                      ),
                      Gap(20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DisplayWhiteText(text: "Add new task"),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
