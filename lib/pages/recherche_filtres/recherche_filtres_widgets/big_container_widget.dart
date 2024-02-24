import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigContainer extends StatelessWidget {
  final double height;
  final String text;
  final Widget secondRow;
  final Widget? thirtyRow;

  const BigContainer({
    Key? key,
    required this.height,
    required this.text,
    required this.secondRow,
    this.thirtyRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: height.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          width: 22.w, // Largeur de l'icône
                          height: 22.h, // Hauteur de l'icône
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(
                                255, 231, 230, 230), // Couleur de fond grise
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.circle_notifications, // Icône
                              color: Colors.black, // Couleur de l'icône
                              size: 15.sp, // Taille de l'icône
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: secondRow),
                ],
              ),
              if (thirtyRow != null) ...[
                Row(
                  children: [
                    Expanded(child: thirtyRow!),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
