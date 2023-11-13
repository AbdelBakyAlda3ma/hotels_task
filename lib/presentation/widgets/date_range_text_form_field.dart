import 'package:flutter/material.dart';
import 'package:hotels_task/core/functions/get_date_time_range.dart';

class DateRangeTextFormField extends StatefulWidget {
  const DateRangeTextFormField({super.key});

  @override
  State<DateRangeTextFormField> createState() => _DateRangeTextFormFieldState();
}

class _DateRangeTextFormFieldState extends State<DateRangeTextFormField> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  /// dateFormat method return the desired design format of the date range
  String dateFormat(DateTimeRange dateTimeRange) {
    var startYear = dateTimeRange.start.year;
    var startMonth = dateTimeRange.start.month;
    var startDay = dateTimeRange.start.day;
    var endYear = dateTimeRange.end.year;
    var endMonth = dateTimeRange.end.month;
    var endDay = dateTimeRange.end.day;
    return '$startYear-$startMonth-$startDay ==> $endYear-$endMonth-$endDay';
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextFormField(
        onTap: () async {
          DateTimeRange? dateTimeRange = await getDateTimeRange(context);
          if (dateTimeRange != null) {
            setState(() {
              controller.text = dateFormat(dateTimeRange);
            });
          }
        },
        readOnly: true,
        controller: controller,
        style: const TextStyle(
          color: Color(0xff196cba),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        cursorHeight: 20,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            top: 14,
            left: 12,
            bottom: 14,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              controller.clear();
            },
            child: const Icon(
              Icons.close,
              color: Color(0xff9ca2af),
            ),
          ),
          hintText: 'Choose the duration',
          hintStyle: const TextStyle(
            color: Color(0xff196cba),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Color(0xff196cba),
      ),
    );
  }
}
