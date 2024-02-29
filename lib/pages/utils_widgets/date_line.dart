import 'package:date_picker_timeline/extra/style.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class CustomDatePicker extends StatelessWidget {
  final DateTime startDate;
  final double width;
  final double height;
  final DatePickerController? controller;
  final TextStyle monthTextStyle;
  final TextStyle dayTextStyle;
  final TextStyle dateTextStyle;
  final Color selectedTextColor;
  final Color selectionColor;
  final Color deactivatedColor;
  final DateTime initialSelectedDate;
  final List<DateTime>? activeDates;
  final List<DateTime>? inactiveDates;
  final int? daysCount;
  final ValueChanged<DateTime>? onDateChange;
  final String locale;

  const CustomDatePicker(
    this.startDate, {
    Key? key,
    required this.width,
    required this.height,
    this.controller,
    this.monthTextStyle = defaultDateTextStyle,
    this.dayTextStyle = defaultDayTextStyle,
    this.dateTextStyle = defaultDateTextStyle,
    this.selectedTextColor = Colors.white,
    this.selectionColor = Colors.blue,
    this.deactivatedColor = Colors.grey,
    required this.initialSelectedDate,
    this.activeDates,
    this.inactiveDates,
    this.daysCount,
    this.onDateChange,
    this.locale = "fr_FR",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DatePicker(
          startDate,
          width: width,
          height: height,
          controller: controller,
          monthTextStyle: monthTextStyle,
          dayTextStyle: dayTextStyle,
          dateTextStyle: dateTextStyle,
          selectedTextColor: selectedTextColor,
          selectionColor: selectionColor,
          deactivatedColor: deactivatedColor,
          initialSelectedDate: initialSelectedDate,
          activeDates: activeDates,
          inactiveDates: inactiveDates,
          daysCount: daysCount!,
          onDateChange: onDateChange,
          locale: locale,
        ),
      ],
    );
  }
}
