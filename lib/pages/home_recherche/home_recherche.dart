import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/home_recherche/home_recherche_widgets/terrain_container.dart';
import 'package:sunu_foot/pages/utils_widgets/time_slot.dart';
import 'package:sunu_foot/routes.dart';
import 'package:sunu_foot/services/terrain_data.dart';

class HomeRecherche extends StatefulWidget {
  const HomeRecherche({super.key});

  @override
  State<HomeRecherche> createState() => _HomeRechercheState();
}

class _HomeRechercheState extends State<HomeRecherche> {
  late DateTime _selectedValue; // Déclaration de la variable _selectedValue

  @override
  void initState() {
    super.initState();
    _selectedValue = DateTime.now(); // Initialisation avec la date actuelle
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LE ROW QUI CONTIENT L'ENTETE, LE LOGO ETC...
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => {Navigator.pop(context)},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30.sp,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/group-41.png',
                        width: 36.w,
                        height: 36.h,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sunu\nFoot',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/alarme.png',
                        width: 20.w,
                        height: 22.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // RECHERCHER
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 275.w,
                    height: 44.h,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.green,
                        width: 2.w,
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search,
                            color: Colors.green), // Icône de recherche
                        SizedBox(
                            width:
                                10.w), // Espacement entre l'icône et le texte
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Rechercher', // Texte d'aide
                              border: InputBorder
                                  .none, // Pas de bordure autour du TextField
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                      color: Colors.green, // Couleur de fond verte
                      borderRadius:
                          BorderRadius.circular(10.0), // Bordures arrondies
                    ),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.settings, // Icône de filtre
                          color: Colors.white, // Couleur blanche de l'icône
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, Routes.RECHERCHE_FILTRES);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // LE GRAND CONTAINER GRIS
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 10.h),
                height: 45.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 220, 220),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS DU CONTAINER GRIS
                  child: Column(
                    children: [
                      // LE ROW QUI CONTIENT LE CALENDRIER
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Container(
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
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      //LE CONTAINER DE TIMES SLOTS
                      TimeSlotContainer(),
                      SizedBox(
                        height: 10.h,
                      ),
                      // LA PARTIE DES TERRAINS
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: TerrainData.terrains.length,
                              itemBuilder: (context, index) {
                                final terrain = TerrainData.terrains[index];
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      bottom:
                                          10.0), // Ajouter un padding de 10 en bas
                                  child: CustomTerrainContainer(
                                    ontap: () {
                                      Navigator.pushNamed(
                                          context, Routes.TERRAIN_PAGE,
                                          arguments: terrain);
                                    },
                                    imageLocation: terrain.imageLocation,
                                    title: terrain.title,
                                    subtitle: terrain.subtitle,
                                    minPrice: terrain.minPrice,
                                    maxPrice: terrain.maxPrice,
                                    rating: terrain.rating,
                                  ),
                                );
                              },
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

  List<String> _generateHourIntervals() {
    List<String> hours = [];
    DateTime now = DateTime.now();
    for (int i = 0; i < 24; i++) {
      String hour = '${(now.hour + i) % 24}:00'; // Format HH:00
      hours.add(hour);
    }
    return hours;
  }
}
