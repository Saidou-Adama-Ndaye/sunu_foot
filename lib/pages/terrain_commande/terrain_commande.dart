import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/small_container_widget.dart';
import 'package:sunu_foot/pages/terrain_commande/terrain_commande_widgets/bottom_container.dart';

class TerrainCommande extends StatelessWidget {
  const TerrainCommande({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 10.w, right: 150.w, top: 30.h, bottom: 10.h),
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
                  Text(
                    'Réservation',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
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
                  color: Color.fromARGB(255, 241, 240, 240),
                ),
                // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, bottom: 20.h),
                      // LE ROW QUI CONTIENT LE TITRE "RESERVER LE TERRAIN"
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Réserver le terrain :',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    // LE CONTAINER EN VERT QUI SE TROUVE AU MILIEU
                    Container(
                      width: 330.w,
                      height: 345.h,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS DU CONTAINER VERT
                      child: Column(
                        children: [
                          // LE ROW QUI CONTIENT LE LE LOGO ET LE NOM DU TERRAIN
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10.w, top: 20.h, right: 90.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.sp),
                                  // margin: EdgeInsets.only(top: 30.h),
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 240, 239, 237),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Image.asset(
                                    'assets/images/image-64.png',
                                    width: 40.w,
                                    height: 40.h,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Terrain Sénégal Japon',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Rtes de l\'aéreport(Sud Foire), Dakar',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          // LE CONTAINER EN BLANC QUI SE TROUVE DANS LE CONTAINER VERT
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 20.h),
                              width: 330.w,
                              height: 250.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Column(
                                children: [
                                  // LE PREMIER ROW DU CONTAINER BLANC
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Section H-1',
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
                                        'assets/images/auto-group-7chq.png',
                                        width: 45.w,
                                        height: 45.h,
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
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  // LE DEUXIEME ROW DU CONTAINER BLANC
                                  Row(
                                    children: [
                                      Container(
                                        width: 67.w,
                                        height: 51.h,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 235, 234, 234),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15.r),
                                            bottomLeft: Radius.circular(15.r),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '-30mn',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 154.w,
                                        height: 51.h,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff1f243b),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '60 mins',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                            Text(
                                              '50.000 fr',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 67.w,
                                        height: 51.h,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15.r),
                                            bottomRight: Radius.circular(15.r),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+30mn',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  // LE TROISIEME ROW DU CONTAINER BLANC
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Timing :',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          Text(
                                            '18h:00-19h:00',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Date :',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          Text(
                                            '15 mars 2023',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  // LE QUATRIEME ROW DU CONTAINER BLANC
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallContainer(
                                        pading: EdgeInsets.symmetric(
                                            horizontal: 10.w),
                                        width: 46,
                                        height: 24,
                                        color: const Color.fromARGB(
                                            255, 44, 160, 48),
                                        borderRadius: 10,
                                        children: [
                                          Icon(
                                            Icons.person_2_outlined, // Icône
                                            color: const Color.fromARGB(
                                                255,
                                                255,
                                                255,
                                                255), // Couleur de l'icône
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
                                        pading: EdgeInsets.symmetric(
                                            horizontal: 10.w),
                                        width: 46,
                                        height: 24,
                                        color: const Color.fromARGB(
                                            255, 44, 160, 48),
                                        borderRadius: 10,
                                        children: [
                                          Icon(
                                            Icons.person_2_outlined, // Icône
                                            color: const Color.fromARGB(
                                                255,
                                                255,
                                                255,
                                                255), // Couleur de l'icône
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
                                        pading: EdgeInsets.symmetric(
                                            horizontal: 10.w),
                                        width: 46,
                                        height: 24,
                                        color: const Color.fromARGB(
                                            255, 44, 160, 48),
                                        borderRadius: 10,
                                        children: [
                                          Icon(
                                            Icons.person_2_outlined, // Icône
                                            color: const Color.fromARGB(
                                                255,
                                                255,
                                                255,
                                                255), // Couleur de l'icône
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
                                        pading: EdgeInsets.symmetric(
                                            horizontal: 10.w),
                                        width: 46,
                                        height: 24,
                                        color: const Color.fromARGB(
                                            255, 44, 160, 48),
                                        borderRadius: 10,
                                        children: [
                                          Icon(
                                            Icons.person_2_outlined, // Icône
                                            color: const Color.fromARGB(
                                                255,
                                                255,
                                                255,
                                                255), // Couleur de l'icône
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    // LE ROW QUI CONTIENT LE PARAGRAPHE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: (18.w)),
                          width: 244.w,
                          height: 43.h,
                          child: Wrap(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors
                                        .black, // Couleur par défaut du texte
                                  ),
                                  children: const [
                                    TextSpan(
                                      text:
                                          'Vous pouvez réserver en payant la somme de ',
                                    ),
                                    TextSpan(
                                      text: '25.000 ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          ' fr (50% du montant), ou en payantla totalité de la somme',
                                    ),
                                    TextSpan(
                                      text: ' (50.000 fr) ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    // LE BOTTOM
                    Expanded(
                      child: BottomContainer(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
