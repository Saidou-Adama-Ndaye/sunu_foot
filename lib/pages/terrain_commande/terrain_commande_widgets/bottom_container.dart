import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.h),
      height: 170.h, // Hauteur personnalisée
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      // LE COLUMN QUI CONTIENT LES ELEMENTS
      child: Column(
        children: [
          // LE COLUMN QUI CONTIENT LES DEUX TEXTES
          Column(
            children: [
              Text(
                'Total à payer :',
                style: TextStyle(
                  fontSize: 10.sp,
                ),
              ),
              Text(
                '50.000 fr',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          // LE ROW QUI CONTIENT LES DEUX BOUTTONS
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // Espacement égal entre les boutons
            children: [
              // BOUTON RESERVER
              ElevatedButton(
                onPressed: () {
                  // Action du premier bouton
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 231, 230, 230), // Couleur du bouton gris
                  fixedSize: Size(158.w, 49.h), // Taille du bouton
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.r), // Bordure arrondie
                  ),
                ),
                child: Text(
                  'Réserver',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              // BOUTON TOUT PAYER
              ElevatedButton(
                onPressed: () {
                  // Action du deuxième bouton
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 44, 160, 48), // Couleur du bouton vert
                  fixedSize: Size(158.w, 49.h), // Taille du bouton
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Bordure arrondie
                  ),
                ),
                child: Text(
                  'Tout payer',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
