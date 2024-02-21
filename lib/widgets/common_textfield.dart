import 'package:api_riverpoad/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {super.key,
      required this.hintText,
      required this.title,
      this.controller,
      this.maxlines,
      this.sufixicon,
      this.readOnly = false});
  final String title;
  final String hintText;
  final TextEditingController? controller;
  final int? maxlines;
  final Widget? sufixicon;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.titleLarge,
        ),
        Gap(10),
        TextField(
          readOnly: readOnly,
          controller: controller,
          maxLines: maxlines,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: sufixicon,
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
