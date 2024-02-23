import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionHRow extends StatelessWidget {
  final String title;
  final String picture;

  const SectionHRow({
    Key? key,
    required this.title,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Haut : 170/80m',
              style: TextStyle(
                fontSize: 10.sp,
              ),
            ),
            Text(
              'fermé - Gazon',
              style: TextStyle(
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
        Image.asset(
          picture,
          width: 40.w,
          height: 40.h,
        ),
        Column(
          children: [
            Text(
              '18:00',
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Heure debut',
              style: TextStyle(
                fontSize: 10.sp,
              ),
            ),
          ],
        )
      ],
    );
  }
}
