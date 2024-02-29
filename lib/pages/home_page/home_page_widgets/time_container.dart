import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTimeContainer extends StatelessWidget {
  final String starTime;
  final String endTime;

  const CustomTimeContainer({
    Key? key,
    required this.starTime,
    required this.endTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
        vertical: 5.h,
      ),
      width: 62.w,
      height: 26.h,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        '$starTime - $endTime',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 11.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
