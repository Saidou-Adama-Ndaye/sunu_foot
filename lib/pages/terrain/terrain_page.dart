import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/small_container_widget.dart';
import 'package:sunu_foot/pages/terrain/terrain_page_widgets/section_container.dart';
import 'package:sunu_foot/pages/utils_widgets/date_container.dart';
import 'package:sunu_foot/pages/utils_widgets/header_container.dart';
import 'package:sunu_foot/pages/utils_widgets/time_slot_container.dart';

class TerrainPage extends StatelessWidget {
  const TerrainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LE HEADER
            const HeaderContainer(),
            Expanded(
              // LE GRAND CONTAINER GRIS
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                height: 45.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 240, 240),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS DU CONTAINER GRIS
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          // LE ROW QUI CONTIENT LES DATES
                          child: Row(
                            children: [
                              const CustomDateContainer(
                                text: 'Jeu\n09\nMars',
                                backgroundColor: Color(0xff1f243b),
                                textColor: Colors.white,
                              ),
                              SizedBox(width: 10.w),
                              const CustomDateContainer(
                                text: 'Ven\n10\nMars',
                                backgroundColor: Color(0xffffffff),
                                textColor: Colors.black,
                              ),
                              SizedBox(width: 10.w),
                              const CustomDateContainer(
                                text: 'Sam\n11\nMars',
                                backgroundColor: Color(0xffffffff),
                                textColor: Colors.black,
                              ),
                              SizedBox(width: 10.w),
                              const CustomDateContainer(
                                text: 'Dim\n012\nMars',
                                backgroundColor: Color(0xffffffff),
                                textColor: Colors.black,
                              ),
                              SizedBox(width: 10.w),
                              const CustomDateContainer(
                                text: 'Lun\n13\nMars',
                                backgroundColor: Color(0xffffffff),
                                textColor: Colors.black,
                              ),
                              SizedBox(width: 10.w),
                              const CustomDateContainer(
                                text: 'Mar\n14\nMars',
                                backgroundColor: Color(0xffffffff),
                                textColor: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // LE CONTAINER QUI CONTIENT LES TIMES SLOTS
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        color: Colors.white,
                        width: 375.w,
                        height: 37.h,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              TimeSlotContainer(
                                  time: '10:00', backgroundColor: Colors.white),
                              TimeSlotContainer(
                                time: '11:00',
                                backgroundColor: Colors.white,
                              ),
                              TimeSlotContainer(
                                time: '12:00',
                                backgroundColor: Colors.white,
                              ),
                              TimeSlotContainer(
                                time: '13:00',
                                backgroundColor: const Color(0xff1f243b),
                              ),
                              TimeSlotContainer(
                                time: '14:00',
                                backgroundColor: Colors.white,
                              ),
                              TimeSlotContainer(
                                time: '15:00',
                                backgroundColor: Colors.white,
                              ),
                              TimeSlotContainer(
                                time: '16:00',
                                backgroundColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // LE COLUMN QUI CONTIENT LES SECTIONS
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            // LE ROW QUI CONTIENT LE GRAND TITRE "SECTIONS DISPONIBLES"
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sections disponibles',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SmallContainer(
                                  pading: const EdgeInsets.all(5),
                                  width: 147,
                                  height: 26,
                                  color: Colors.white,
                                  borderRadius: 10,
                                  children: [
                                    Icon(
                                      Icons.traffic,
                                      size: 10.sp,
                                      weight: 20,
                                    ),
                                    Text(
                                      'Trier par :',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                    Text(
                                      'Taille section:',
                                      style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            // PREMIERE SECTION H-1
                            const SectionContainer(
                              height: 159,
                              title: 'Section H-1',
                              picture: 'assets/images/auto-group-y1o9.png',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            // DEUXIEME SECTION H-2
                            const SectionContainer(
                              height: 159,
                              title: 'Section H-2',
                              picture: 'assets/images/auto-group-7chq.png',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            // TROISIEME SECTION H-3
                            const SectionContainer(
                              height: 159,
                              title: 'Section H-3',
                              picture: 'assets/images/group-181.png',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
