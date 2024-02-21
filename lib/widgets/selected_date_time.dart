import 'package:api_riverpoad/provider/date_provider.dart';
import 'package:api_riverpoad/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import 'common_textfield.dart';

class SelectedDateTime extends ConsumerWidget {
  const SelectedDateTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(dateProvider);
    final time = ref.watch(timeProvider);
    return Row(
      children: [
        Expanded(
          child: CommonTextField(
            title: "Date",
            hintText: DateFormat.yMMMd().format(date),
            readOnly: true,
            sufixicon: IconButton(
              onPressed: () => _selectedDate(context, ref),
              icon: FaIcon(FontAwesomeIcons.calendar),
            ),
          ),
        ),
        Gap(15),
        Expanded(
          child: CommonTextField(
            title: "Time",
            hintText: Helpers.timetoString(time),
            readOnly: true,
            sufixicon: IconButton(
              onPressed: () => _selectedTime(context, ref),
              icon: FaIcon(FontAwesomeIcons.clock),
            ),
          ),
        )
      ],
    );
  }

  ///this method is used for open clock when press on clock icon//
  void _selectedTime(BuildContext context, WidgetRef ref) async {
    TimeOfDay? pickedtime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedtime != null) {
      ref.read(timeProvider.notifier).state = pickedtime;
    }
  }

  ///here end the open clock method///

  void _selectedDate(BuildContext context, WidgetRef ref) async {
    final initialDate = ref.read(dateProvider);

    DateTime? pickDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2090),
    );
    if (pickDate != null) {
      ref.read(dateProvider.notifier).state = pickDate;
    }
  }
}
