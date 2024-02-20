import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeSlotContainer extends StatelessWidget {
  final String time;
  final Color backgroundColor;

  TimeSlotContainer({required this.time, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 55.w,
      height: 27.h,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        time,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
          color: backgroundColor == Colors.white ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
