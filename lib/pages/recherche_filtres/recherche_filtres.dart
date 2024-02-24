import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/big_container_widget.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/bottom_navigator_container.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/small_container_widget.dart';

class RechercheFiltres extends StatelessWidget {
  const RechercheFiltres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // EN TETE DE LA PAGE
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 35.h, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fermer',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 13.sp,
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        // LE GRAND CONTAINER GRIS
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(
            left: 20.w,
            top: 20.h,
            right: 20.w,
          ),
          margin: EdgeInsets.only(top: 20.sp),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 218, 215, 215),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r))),
          child: Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // LE TITRE FILTRER PAR
                  Row(
                    children: [
                      Text(
                        'Filtrer par :',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // LE PREMIER CONTAINER
                  BigContainer(
                    height: 90,
                    text: 'Localisation du terrain',
                    secondRow: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 44, 160, 48),
                          borderRadius: 10,
                          children: [
                            Container(
                              width: 20.w, // Largeur de l'icône
                              height: 20.h, // Hauteur de l'icône
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 255,
                                    255), // Couleur de fond grise
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.check, // Icône
                                  color: const Color.fromARGB(
                                      255, 44, 160, 48), // Couleur de l'icône
                                  size: 12.sp, // Taille de l'icône
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Plus près de moi',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Container(
                              width: 20.w, // Largeur de l'icône
                              height: 20.h, // Hauteur de l'icône
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 255,
                                    255), // Couleur de fond grise
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Choisir une zone',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // LE DEUXIEME CONTAINER
                  BigContainer(
                    height: 90,
                    text: 'Prix location',
                    secondRow: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Text(
                              'De :',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '0 fr',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Text(
                              'A :',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '50 000 fr',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // LE TROISIEME CONTAINER
                  BigContainer(
                    height: 136,
                    text: 'Nombre de joueurs par match',
                    secondRow: Wrap(
                      spacing: 10.w,
                      runSpacing: 10.h,
                      children: [
                        SmallContainer(
                          pading: const EdgeInsets.all(5),
                          width: 65,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Icon(
                              Icons.person_2_outlined, // Icône
                              color: const Color.fromARGB(
                                  255, 0, 0, 0), // Couleur de l'icône
                              size: 12.sp, // Taille de l'icône
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: const EdgeInsets.all(5),
                          width: 65,
                          height: 34,
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
                              '6',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: const EdgeInsets.all(5),
                          width: 65,
                          height: 34,
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
                              '7',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: const EdgeInsets.all(5),
                          width: 65,
                          height: 34,
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
                        SmallContainer(
                          pading: const EdgeInsets.all(5),
                          width: 65,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Icon(
                              Icons.person_2_outlined, // Icône
                              color: const Color.fromARGB(
                                  255, 0, 0, 0), // Couleur de l'icône
                              size: 12.sp, // Taille de l'icône
                            ),
                            Text(
                              '9',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: const EdgeInsets.all(5),
                          width: 65,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Icon(
                              Icons.person_2_outlined, // Icône
                              color: const Color.fromARGB(
                                  255, 0, 0, 0), // Couleur de l'icône
                              size: 12.sp, // Taille de l'icône
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: const EdgeInsets.all(5),
                          width: 65,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Icon(
                              Icons.person_2_outlined, // Icône
                              color: const Color.fromARGB(
                                  255, 0, 0, 0), // Couleur de l'icône
                              size: 12.sp, // Taille de l'icône
                            ),
                            Text(
                              '11',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // LE QUATRIEME CONTAINER
                  BigContainer(
                    height: 90,
                    text: 'Date de disponibilité',
                    secondRow: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Text(
                              'De :',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '27 février',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Text(
                              'A :',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '28 février',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // LE CINQUIEME CONTAINER
                  BigContainer(
                    height: 90,
                    text: 'Avis (nombre d\'étoiles)',
                    secondRow: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 231, 230, 230),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(), // Utilisation du CustomBottomNavigationBar
    );
  }
}
