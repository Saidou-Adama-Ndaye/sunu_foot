import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/home_page/home_page.dart';
import 'package:sunu_foot/pages/home_recherche/home_recherche.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres.dart';
import 'package:sunu_foot/pages/terrain/terrain_page.dart';
import 'package:sunu_foot/pages/terrain_avis/terrain_avis.dart';
import 'package:sunu_foot/pages/terrain_commande/terrain_commande.dart';
import 'package:sunu_foot/pages/terrain_commande_succes/terrain_commande_succes.dart';
import 'package:sunu_foot/pages/terrain_gallerie/terrain_gallerie.dart';
import 'package:sunu_foot/pages/terrain_infos/terrain_infos.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Liste des pages à afficher
  final List<Widget> pages = [
    TerrainAvis(),
    TerrainInfos(),
    TerrainGallerie(),
    TerrainCommandeSuccess(),
    TerrainCommande(),
    TerrainPage(),
    Home(),
    RechercheFiltres(),
    HomeRecherche(),
  ];

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, __) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          title: 'All Pages Demo',
          // Utiliser ListView.builder pour afficher toutes les pages
          home: Scaffold(
            appBar: AppBar(
              title: Text('La démo de la maquette'),
            ),
            body: ListView.builder(
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pages[index].toString()),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pages[index]),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
