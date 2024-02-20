import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.h, // Hauteur personnalisée
      color: Colors.white, // Couleur de fond
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // Espacement égal entre les boutons
        children: [
          ElevatedButton(
            onPressed: () {
              // Action du premier bouton
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 231, 230, 230), // Couleur du bouton gris
              minimumSize: Size(163.w, 48.h), // Taille du bouton
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r), // Bordure arrondie
              ),
            ),
            child: Text(
              'Réinitialiser',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Action du deuxième bouton
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 44, 160, 48), // Couleur du bouton vert
              minimumSize: Size(163.w, 48.h), // Taille du bouton
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordure arrondie
              ),
            ),
            child: Text(
              'Rechercher',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
