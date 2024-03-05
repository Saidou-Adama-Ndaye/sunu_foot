import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sunu_foot/pages/terrain_avis/terrain_avis_widgets/bottom_avis_container.dart';
import 'package:sunu_foot/pages/terrain_avis/terrain_avis_widgets/customer_avis_container.dart';
import 'package:sunu_foot/pages/utils_widgets/header_container.dart';
import 'package:sunu_foot/provider/terrain_provider.dart';
import 'package:sunu_foot/services/terrain_data.dart';

class TerrainAvis extends StatelessWidget {
  const TerrainAvis({super.key});

  @override
  Widget build(BuildContext context) {
    // Terrain? terrain = Provider.of<TerrainProvider>(context).terrain;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LE HEADER
            const HeaderContainer(
              avis: true,
            ),
            Expanded(
              // LE GRAND CONTAINER GRIS
              child: Container(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                  top: 10.h,
                ),
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 219, 216, 216),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS DU CONTAINER GRIS
                  child: Column(
                    children: [
                      const CustomerAvisContainer(
                        name: 'Demba Digne',
                        imagePath: 'assets/images/ellipse-10-bg.png',
                        color: Colors.blue,
                        date: '16/05/2023',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CustomerAvisContainer(
                        name: 'Saidou Dia',
                        imagePath: 'assets/images/ellipse-12-bg.png',
                        color: Colors.orange,
                        date: '10/03/2023',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CustomerAvisContainer(
                        name: 'Salif Sow',
                        imagePath: 'assets/images/ellipse-14-bg.png',
                        color: Color.fromARGB(255, 137, 209, 139),
                        date: '31/12/2023',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAvisContainer(),
    );
  }
}
