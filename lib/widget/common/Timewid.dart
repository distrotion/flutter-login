import 'package:flutter/material.dart';

Future<void> selectTime(
    BuildContext context, TimeOfDay selectedTime, Function output) async {
  final TimeOfDay? timeOfDay = await showTimePicker(
    context: context,
    initialTime: selectedTime,
    initialEntryMode: TimePickerEntryMode.dial,
  );
  if (timeOfDay != null && timeOfDay != selectedTime) {
    selectedTime = timeOfDay;
    // output(selectedTime.toString());
    output("${selectedTime.hour}:${selectedTime.minute}");
  }
}
