import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/utils_widgets/rating_bar.dart';

class BottomAvisContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.sp),
      height: 150.h, // Hauteur personnalisée
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRatingBar(
                itemSize: 20,
                initialRating: 0,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                size: 10,
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 226, 224, 224),
              hintText: 'Publier un avis ',
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(20.0), // Coins arrondis du TextField
              ),
              suffixIcon: Container(
                width: 40.w, // Largeur du conteneur de l'icône
                height: 40.h, // Hauteur du conteneur de l'icône
                decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Forme de cercle
                  color: Colors.green, // Couleur de fond du cercle
                ),
                child: const Center(
                  child: Icon(
                    Icons
                        .arrow_forward, // Icône de flèche à l'intérieur du cercle
                    color: Colors.white, // Couleur de l'icône
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
