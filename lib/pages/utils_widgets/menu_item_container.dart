import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemContainer extends StatelessWidget {
  final VoidCallback? ontap;
  final String text;
  final Color color;
  final Border? border;

  const MenuItemContainer({
    Key? key,
    this.ontap,
    required this.text,
    required this.color,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        border: border,
      ),
      child: InkWell(
        onTap: ontap,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}
