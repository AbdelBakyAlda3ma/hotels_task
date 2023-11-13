import 'package:flutter/material.dart';

Future<DateTimeRange?> getDateTimeRange(BuildContext context) async {
  final DateTimeRange? dateTimeRange = await showDateRangePicker(
    context: context,
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
    initialDateRange: DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now(),
    ),
  );
  return dateTimeRange;
}
