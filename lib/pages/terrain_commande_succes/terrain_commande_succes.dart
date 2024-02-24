import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/small_container_widget.dart';

class TerrainCommandeSuccess extends StatelessWidget {
  const TerrainCommandeSuccess({super.key});

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
                  color: Color.fromARGB(255, 224, 221, 221),
                ),
                // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.h, bottom: 20.h),
                      // LE COLUMN QUI CONTIENT L'ICONE ET LE MESSAGE DE BIEN RECU
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30.h,
                            width: 30.w,
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.green, // Couleur de fond verte
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.check, // Icôre de filtre
                                color: Colors.white,
                                size: 20.sp, // Couleur blanche de l'icône
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Votre commande a été reçu !',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Détails de ma commande :',
                            style: TextStyle(
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // LE PREMIER CONTAINER EN BLANC QUI SE TROUVE AU MILIEU
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      width: 330.w,
                      height: 243.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Column(
                        children: [
                          // LE PREMIER ROW DU CONTAINER BLANC
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Terrain :',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Terrain Sénégal Japon',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(),
                          // LE DEUXIEME ROW DU CONTAINER BLANC
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Section H-1',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Haut : 170/80m',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'fermé - Gazon',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                        ),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(),
                          // LE TROISIEME ROW DU CONTAINER BLANC
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(),
                          // LE QUATRIEME ROW DU CONTAINER BLANC
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SmallContainer(
                                  pading:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  width: 46,
                                  height: 24,
                                  color: const Color.fromARGB(255, 44, 160, 48),
                                  borderRadius: 10,
                                  children: [
                                    Icon(
                                      Icons.person_2_outlined, // Icône
                                      color: const Color.fromARGB(255, 255, 255,
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
                                  pading:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  width: 46,
                                  height: 24,
                                  color: const Color.fromARGB(255, 44, 160, 48),
                                  borderRadius: 10,
                                  children: [
                                    Icon(
                                      Icons.person_2_outlined, // Icône
                                      color: const Color.fromARGB(255, 255, 255,
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
                                  pading:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  width: 46,
                                  height: 24,
                                  color: const Color.fromARGB(255, 44, 160, 48),
                                  borderRadius: 10,
                                  children: [
                                    Icon(
                                      Icons.person_2_outlined, // Icône
                                      color: const Color.fromARGB(255, 255, 255,
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
                                  pading:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  width: 46,
                                  height: 24,
                                  color: const Color.fromARGB(255, 44, 160, 48),
                                  borderRadius: 10,
                                  children: [
                                    Icon(
                                      Icons.person_2_outlined, // Icône
                                      color: const Color.fromARGB(255, 255, 255,
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    // LE ROW QUI CONTIENT LE TITRE DU DEUXIEME CONTAINER BLANC
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Veuillez présenter ce code QR à l\'entrée',
                          style: TextStyle(
                            fontSize: 11.sp,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    // LE DEUXIEME CONTAINER BLANC QUI SE TROUVE EN BAS
                    Container(
                      width: 330.w,
                      height: 199.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      // LE COLUMN QUI CONTIENT LE QR CODE ET LE BOUTTON
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // QR CODE
                            Icon(
                              Icons.qr_code_2,
                              size: 100.sp,
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            // LE BOUTON DE TELECHARGEMENT
                            ElevatedButton(
                              onPressed: () {
                                // Action du deuxième bouton
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                    255, 44, 160, 48), // Couleur du bouton vert
                                fixedSize:
                                    Size(280.w, 45.h), // Taille du bouton
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15), // Bordure arrondie
                                ),
                              ),
                              child: Text(
                                'Téléchager le QR code',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
