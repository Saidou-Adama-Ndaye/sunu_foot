import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/terrain_gallerie/gallerie_picture.dart';
import 'package:sunu_foot/pages/terrain_gallerie/terrain_gallerie_widgets/gallerie_container.dart';
import 'package:sunu_foot/pages/utils_widgets/header_container.dart';

class TerrainGallerie extends StatelessWidget {
  const TerrainGallerie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LE HEADER
            const HeaderContainer(),
            Expanded(
              // LE GRAND CONTAINER GRIS
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 219, 216, 216),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS DU CONTAINER GRIS
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // PREMIER CONTAINER DE GALLERIE
                      const GallerieContainer(
                        date: 'janvier 2023',
                        gallerie: [
                          GalleriePicture(
                            imagePath: 'assets/images/rectangle-116.png',
                          ),
                          GalleriePicture(
                            imagePath: 'assets/images/rectangle-113.png',
                          ),
                          GalleriePicture(
                            imagePath: 'assets/images/rectangle-111.png',
                          ),
                          GalleriePicture(
                            imagePath: 'assets/images/rectangle-112.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      // DEUXIEME CONTAINER DE GALLERIE
                      const GallerieContainer(
                        date: 'février 2023',
                        gallerie: [
                          GalleriePicture(
                            imagePath: 'assets/images/rectangle-27-LhZ.png',
                          ),
                          GalleriePicture(
                            imagePath: 'assets/images/rectangle-115.png',
                          ),
                          GalleriePicture(
                            imagePath: 'assets/images/rectangle-112.png',
                          ),
                          GalleriePicture(
                            imagePath: 'assets/images/rectangle-65.png',
                          ),
                        ],
                      ),
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
