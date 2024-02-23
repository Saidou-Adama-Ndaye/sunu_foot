import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerAvisContainer extends StatelessWidget {
  final String name;
  final String imagePath;
  final Color color;
  final String date;

  const CustomerAvisContainer({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.color,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 158.h,
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      // LE COLUMN QUI CONTIENT TOUT LE CONTENU
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LE ROW QUI CONTIENT L'IMAGE, le nom et la date
          Row(
            children: [
              // IMAGE
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: color, // Couleur de fond verte
                  borderRadius: BorderRadius.circular(100.r),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                  ), // Bordures arrondies
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              // LE COLUMN QUI CONTIENT LE NOM ET LES ETOILES
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  //  ETOILES
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 10.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 10.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 10.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 10.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 209, 209, 208),
                        size: 10.sp,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 130.w,
              ),
              // DATE
              Expanded(
                child: Text(
                  date,
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
              ),
            ],
          ),
          // LE PARAGRAPHE
          Padding(
            padding: EdgeInsets.only(left: 10.sp),
            child: Text(
              'Nous avons loué un terrain de foot pour une partie entre amis et c\'était absolument fantastique! Le terrain était en excellent état et la réservation a été facile à faire. Nous avons passé une excellente journée et nous sommes impatients de réserver à nouveau.',
              style: TextStyle(
                fontSize: 11.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
