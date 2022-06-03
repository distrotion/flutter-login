import 'package:flutter/material.dart';

Future<void> CalendaSelectDate(
    BuildContext context, DateTime selectedDate, Function output) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
  if (picked != null && picked != selectedDate) {
    selectedDate = picked;
    output("${selectedDate.toLocal()}".split(' ')[0]);
  }
}
