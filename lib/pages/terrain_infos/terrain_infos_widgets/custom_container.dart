import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final List<Widget> children;

  const CustomContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: Colors.white, // Couleur de fond du conteneur
        borderRadius: BorderRadius.circular(10.r), // Coins arrondis
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
