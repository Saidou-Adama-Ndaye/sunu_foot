import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/home_recherche/home_recherche_widgets/terrain_container.dart';
import 'package:sunu_foot/pages/utils_widgets/date_container.dart';
import 'package:sunu_foot/pages/utils_widgets/time_slot_container.dart';

class HomeRecherche extends StatelessWidget {
  const HomeRecherche({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              //############################################################
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              // LE ROW QUI CONTIENT L'ENTETE, LE LOGO ETC...
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => {},
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
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.green, // Couleur de fond verte
                      borderRadius:
                          BorderRadius.circular(10.0), // Bordures arrondies
                    ),
                    child: const Icon(
                      Icons.settings, // Icôre de filtre
                      color: Colors.white, // Couleur blanche de l'icône
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              //##########################################################
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                height: 45.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 240, 240),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      // LE ROW QUI CONTIENT LE CALENDRIER
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
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
                      //LE CONTAINER DE TIMES SLOTS
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
                                backgroundColor: Color(0xff1f243b),
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
                      // LA PARTIE DES TERRAINS
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            // LE PREMIERE CONTAINER DE LA RECCHERCHE
                            const CustomTerrainContainer(
                              imageLocation: 'assets/images/rectangle-65.png',
                              title: 'Terrain Sénégal Japon',
                              subtitle:
                                  'Rtes de l\'aéreport (Sud Foire,  Dakar)',
                              minPrice: '20.000',
                              maxPrice: '70.000',
                              isFavorite: true,
                            ),
                            SizedBox(height: 10.h),
                            // LE DEUXIEME CONTAINER DE LA RECHERCHE
                            const CustomTerrainContainer(
                              imageLocation:
                                  'assets/images/rectangle-113-HE3.png',
                              title: 'Dakar Sacré Coeur',
                              subtitle: 'Route National vers la VDN',
                              minPrice: '30.000',
                              maxPrice: '08.000',
                            ),
                            SizedBox(height: 10.h),
                            // LE TROISIEME CONTAINER DE LA RECHERCHE
                            const CustomTerrainContainer(
                              imageLocation: 'assets/images/rectangle-65.png',
                              title: 'Dakar Sacré Coeur',
                              subtitle: 'Route National vers la VDN',
                              minPrice: '30.000',
                              maxPrice: '08.000',
                              isFavorite: true,
                            ),
                            SizedBox(height: 10.h),
                            // LE DEUXIEME CONTAINER DE LA RECHERCHE
                            const CustomTerrainContainer(
                              imageLocation:
                                  'assets/images/rectangle-113-HE3.png',
                              title: 'Dakar Sacré Coeur',
                              subtitle: 'Route National vers la VDN',
                              minPrice: '30.000',
                              maxPrice: '08.000',
                            ),
                            SizedBox(height: 10.h),
                            // LE TROISIEME CONTAINER DE LA RECHERCHE
                            const CustomTerrainContainer(
                              imageLocation: 'assets/images/rectangle-65.png',
                              title: 'Dakar Sacré Coeur',
                              subtitle: 'Route National vers la VDN',
                              minPrice: '30.000',
                              maxPrice: '08.000',
                              isFavorite: true,
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
