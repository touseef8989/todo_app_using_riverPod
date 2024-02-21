import 'package:api_riverpoad/widgets/common_textfield.dart';
import 'package:api_riverpoad/widgets/display_whtie_text.dart';
import 'package:api_riverpoad/widgets/select_category.dart';
import 'package:api_riverpoad/widgets/selected_date_time.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreatTaskScreen extends StatelessWidget {
  static CreatTaskScreen builder(BuildContext context, GoRouterState state) =>
      CreatTaskScreen();
  const CreatTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DisplayWhiteText(
          text: "Add New Text",
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CommonTextField(
              title: "Task Title",
              hintText: "Task title",
            ),
            Gap(15),
            SelectCategory(),
            Gap(15),
            SelectedDateTime(),
            Gap(15),
            CommonTextField(
              title: "Note",
              hintText: "Task Note",
              maxlines: 5,
            ),
            Gap(80),
            ElevatedButton(
                onPressed: () {},
                child: DisplayWhiteText(
                  text: "Save",
                ))
          ],
        ),
      ),
    );
  }
}
