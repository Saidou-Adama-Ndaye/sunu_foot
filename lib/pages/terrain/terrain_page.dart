import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/home/home_page_widgets/terrain_container.dart';
import 'package:sunu_foot/pages/utils_widgets/date_container.dart';
import 'package:sunu_foot/pages/utils_widgets/header_container.dart';
import 'package:sunu_foot/pages/utils_widgets/menu_item_container.dart';

class TerrainPage extends StatelessWidget {
  const TerrainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderContainer(),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.w),
            //   // LE ROW QUI CONTIENT L'ENTETE, LE LOGO ETC...
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       IconButton(
            //         onPressed: () => {},
            //         icon: Icon(
            //           Icons.arrow_back,
            //           size: 30.sp,
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.all(10.sp),
            //         margin: EdgeInsets.only(top: 30.h),
            //         width: 60.w,
            //         height: 60.h,
            //         decoration: BoxDecoration(
            //             color: Color.fromARGB(255, 240, 239, 237),
            //             borderRadius: BorderRadius.circular(100)),
            //         child: Image.asset(
            //           'assets/images/image-64.png',
            //           width: 50.w,
            //           height: 50.h,
            //         ),
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           Text(
            //             '198',
            //             style: TextStyle(
            //               fontSize: 13.sp,
            //               color: Colors.red,
            //             ),
            //           ),
            //           SizedBox(
            //             width: 5.w,
            //           ),
            //           const Icon(
            //             Icons.favorite,
            //             color: Colors.red,
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10.h,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.w),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Text(
            //         'Terrain Sénégal Japon',
            //         style: TextStyle(
            //           fontSize: 14.sp,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       Text(
            //         'Rtes de l\'aéreport (Sud Foire), Dakar',
            //         style: TextStyle(
            //           fontSize: 11.sp,
            //         ),
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Icon(
            //             size: 17.sp,
            //             Icons.star,
            //             color: Colors.orange,
            //           ),
            //           Icon(
            //             size: 17.sp,
            //             Icons.star,
            //             color: Colors.orange,
            //           ),
            //           Icon(
            //             size: 17.sp,
            //             Icons.star,
            //             color: Colors.orange,
            //           ),
            //           Icon(
            //             size: 17.sp,
            //             Icons.star,
            //             color: Colors.orange,
            //           ),
            //           Icon(
            //             size: 17.sp,
            //             Icons.star,
            //             color: Color.fromARGB(255, 236, 236, 235),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10.h,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.w),
            //   child: Row(
            //     children: [
            //       Container(
            //         padding: EdgeInsets.symmetric(vertical: 10.h),
            //         decoration: const BoxDecoration(
            //           border: Border(
            //             bottom: BorderSide(
            //               width: 2,
            //               color: Color(0xff1f243b),
            //             ),
            //           ),
            //         ),
            //         child: Text(
            //           'Réservation',
            //           style: TextStyle(
            //             fontSize: 12.sp,
            //             fontWeight: FontWeight.bold,
            //             color: const Color(0xff1f243b),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              //#############################################################
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                height: 45.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 240, 240),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        // LE ROW QUI CONTIENT LES JOURS DE LA SEMAINE
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
                      SizedBox(
                        height: 10.h,
                      ),
                      // LE PREMIERE CONTAINER DE LA RECCHERCHE
                      const CustomTerrainContainer(
                        imageLocation: 'assets/images/rectangle-65.png',
                        title: 'Terrain Sénégal Japon',
                        subtitle: 'Rtes de l\'aéreport (Sud Foire,  Dakar)',
                        minPrice: '20.000',
                        maxPrice: '70.000',
                        isFavorite: true,
                      ),
                      SizedBox(height: 10.h),
                      // LE DEUXIEME CONTAINER DE LA RECHERCHE
                      const CustomTerrainContainer(
                        imageLocation: 'assets/images/rectangle-113-HE3.png',
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
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green, // Couleur des icônes sélectionnées
        unselectedItemColor:
            Colors.grey, // Couleur des icônes non sélectionnées
        selectedLabelStyle: const TextStyle(
            color: Colors.black), // Style des labels des icônes sélectionnées
        unselectedLabelStyle: const TextStyle(
            color:
                Colors.black), // Style des labels des icônes non sélectionnées
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Mes favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Compétition',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mon compte',
          ),
        ],
      ),
    );
  }
}