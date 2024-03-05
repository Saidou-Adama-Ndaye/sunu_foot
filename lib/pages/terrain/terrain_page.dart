import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/small_container_widget.dart';
import 'package:sunu_foot/pages/terrain/terrain_page_widgets/section_container.dart';
import 'package:sunu_foot/pages/utils_widgets/header_container.dart';
import 'package:sunu_foot/pages/utils_widgets/time_slot.dart';
import 'package:sunu_foot/provider/terrain_provider.dart';
import 'package:sunu_foot/services/terrain_data.dart';

class TerrainPage extends StatefulWidget {
  final Terrain terrain;
  TerrainPage({super.key, required this.terrain});

  @override
  State<TerrainPage> createState() => _TerrainPageState();
}

class _TerrainPageState extends State<TerrainPage> {
  late DateTime _selectedValue; // Déclaration de la variable _selectedValue

  @override
  void initState() {
    super.initState();
    _selectedValue = DateTime.now(); // Initialisation avec la date actuelle
  }

  @override
  Widget build(BuildContext context) {
    Terrain terrain = widget.terrain;
    Provider.of<TerrainProvider>(context, listen: false).setTerrain(terrain);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LE HEADER
            const HeaderContainer(
              reservation: true,
            ),
            Expanded(
              // LE GRAND CONTAINER GRIS
              child: Container(
                padding: EdgeInsets.only(top: 10.h),
                height: 45.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 219, 216, 216),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS DU CONTAINER GRIS
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: DatePicker(
                          DateTime.now(),
                          width: 72.w,
                          height: 72.h,
                          initialSelectedDate: DateTime.now(),
                          // selectionColor: const Color(0xff1f243b),
                          selectionColor: Color(0xff1f243b),
                          selectedTextColor: Colors.white,
                          deactivatedColor:
                              const Color.fromARGB(255, 85, 17, 17),
                          monthTextStyle: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1f243b),
                          ),
                          dateTextStyle: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1f243b),
                          ),
                          dayTextStyle: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1f243b),
                          ),
                          locale: "fr_FR",
                          onDateChange: (date) {
                            // New date selected
                            setState(
                              () {
                                _selectedValue = date;
                                print(_selectedValue);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // LE CONTAINER QUI CONTIENT LES TIMES SLOTS
                      TimeSlotContainer(),
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
