import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/small_container_widget.dart';
import 'package:sunu_foot/pages/terrain/terrain_page_widgets/section_H_Row.dart';

class SectionContainer extends StatelessWidget {
  final double height;
  final String title;
  final String picture;

  const SectionContainer({
    Key? key,
    required this.height,
    required this.title,
    required this.picture,
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
                      child: SectionHRow(
                    title: title,
                    picture: picture,
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallContainer(
                          pading: EdgeInsets.only(
                              left: 10.w, top: 4.h, right: 4.w, bottom: 4.h),
                          width: 150,
                          height: 46,
                          color: const Color(0xff1f243b),
                          borderRadius: 10,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '60 mins',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '50.000 fr',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 30.h,
                              width: 30.w,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.green, // Couleur de fond verte
                                borderRadius: BorderRadius.circular(
                                    100.r), // Bordures arrondies
                              ),
                              child: Icon(
                                Icons.arrow_forward, // Icôre de filtre
                                color: Colors.white,
                                size: 12.sp, // Couleur blanche de l'icône
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading:
                              EdgeInsets.only(left: 10.w, top: 4.h, right: 4.w),
                          width: 150,
                          height: 46,
                          color: const Color(0xff1f243b),
                          borderRadius: 10,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '60 mins',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '50.000 fr',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 30.h,
                              width: 30.w,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.green, // Couleur de fond verte
                                borderRadius: BorderRadius.circular(
                                    100.r), // Bordures arrondies
                              ),
                              child: Icon(
                                Icons.arrow_forward, // Icôre de filtre
                                color: Colors.white,
                                size: 12.sp, // Couleur blanche de l'icône
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 46,
                          height: 24,
                          color: const Color.fromARGB(255, 44, 160, 48),
                          borderRadius: 10,
                          children: [
                            Icon(
                              Icons.person_2_outlined, // Icône
                              color: const Color.fromARGB(
                                  255, 255, 255, 255), // Couleur de l'icône
                              size: 12.sp, // Taille de l'icône
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 46,
                          height: 24,
                          color: const Color.fromARGB(255, 44, 160, 48),
                          borderRadius: 10,
                          children: [
                            Icon(
                              Icons.person_2_outlined, // Icône
                              color: const Color.fromARGB(
                                  255, 255, 255, 255), // Couleur de l'icône
                              size: 12.sp, // Taille de l'icône
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 46,
                          height: 24,
                          color: const Color.fromARGB(255, 44, 160, 48),
                          borderRadius: 10,
                          children: [
                            Icon(
                              Icons.person_2_outlined, // Icône
                              color: const Color.fromARGB(
                                  255, 255, 255, 255), // Couleur de l'icône
                              size: 12.sp, // Taille de l'icône
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 46,
                          height: 24,
                          color: const Color.fromARGB(255, 44, 160, 48),
                          borderRadius: 10,
                          children: [
                            Icon(
                              Icons.person_2_outlined, // Icône
                              color: const Color.fromARGB(
                                  255, 255, 255, 255), // Couleur de l'icône
                              size: 12.sp, // Taille de l'icône
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
