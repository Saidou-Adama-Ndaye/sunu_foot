import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GallerieContainer extends StatelessWidget {
  final String date;
  final List<Widget> gallerie;

  const GallerieContainer({
    Key? key,
    required this.date,
    required this.gallerie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 304.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: gallerie,
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
