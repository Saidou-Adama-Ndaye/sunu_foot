import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';

class TimeSlotContainer extends StatelessWidget {
  const TimeSlotContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      color: Colors.white,
      width: 375.w,
      height: 37.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GroupButton(
              isRadio: true,
              buttons:
                  _generateHourIntervals(), // Utilisation de la fonction locale
              options: GroupButtonOptions(
                borderRadius: BorderRadius.circular(10.r),
                selectedShadow: const [],
                selectedTextStyle: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                selectedColor: Color(0xff1f243b),
                unselectedShadow: const [],
                // unselectedColor: const Color.fromARGB(255, 231, 230, 230),
                unselectedTextStyle: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                // selectedBorderColor: const Color.fromARGB(255, 197, 196, 197),
                // unselectedBorderColor: Colors.green,
                spacing: 10,
                runSpacing: 10,
                groupingType: GroupingType.row,
                direction: Axis.horizontal,
                buttonHeight: 27.h,
                buttonWidth: 55.w,
                mainGroupAlignment: MainGroupAlignment.start,
                crossGroupAlignment: CrossGroupAlignment.start,
                groupRunAlignment: GroupRunAlignment.start,
                textAlign: TextAlign.center,
                textPadding: EdgeInsets.zero,
                alignment: Alignment.center,
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> _generateHourIntervals() {
    List<String> hours = [];
    DateTime now = DateTime.now();
    for (int i = 0; i < 24; i++) {
      String hour = '${(now.hour + i) % 24}:00'; // Format HH:00
      hours.add(hour);
    }
    return hours;
  }
}
