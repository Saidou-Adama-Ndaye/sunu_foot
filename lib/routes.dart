// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sunu_foot/pages/home_page/home_page.dart';
import 'package:sunu_foot/pages/home_recherche/home_recherche.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres.dart';
import 'package:sunu_foot/pages/terrain/terrain_page.dart';
import 'package:sunu_foot/pages/terrain_avis/terrain_avis.dart';
import 'package:sunu_foot/pages/terrain_commande/terrain_commande.dart';
import 'package:sunu_foot/pages/terrain_commande_succes/terrain_commande_succes.dart';
import 'package:sunu_foot/pages/terrain_gallerie/terrain_gallerie.dart';
import 'package:sunu_foot/pages/terrain_infos/terrain_infos.dart';
import 'package:sunu_foot/services/terrain_data.dart';

class Routes {
  static const String HOME_PAGE = '/';
  static const String HOME_RECHERCHE = '/home_recherche';
  static const String RECHERCHE_FILTRES = '/recherche_filtres';
  static const String TERRAIN_PAGE = '/terrain_page';
  static const String TERRAIN_COMMANDE = '/terrain_commande';
  static const String TERRAIN_COMMANDE_SUCCESS = '/terrain_commande_success';
  static const String TERRAIN_GALLERIE = '/terrain_gallerie';
  static const String TERRAIN_INFOS = '/terrain_infos';
  static const String TERRAIN_AVIS = '/terrain_avis';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME_PAGE:
        return MaterialPageRoute(builder: (_) => const Home());
      case HOME_RECHERCHE:
        return MaterialPageRoute(builder: (_) => const HomeRecherche());
      case RECHERCHE_FILTRES:
        return MaterialPageRoute(builder: (_) => const RechercheFiltres());
      case TERRAIN_PAGE:
        final terrain = settings.arguments as Terrain;
        return MaterialPageRoute(builder: (_) => TerrainPage(terrain: terrain));
      case TERRAIN_COMMANDE:
        return MaterialPageRoute(builder: (_) => const TerrainCommande());
      case TERRAIN_COMMANDE_SUCCESS:
        return MaterialPageRoute(
            builder: (_) => const TerrainCommandeSuccess());
      case TERRAIN_GALLERIE:
        return MaterialPageRoute(builder: (_) => const TerrainGallerie());
      case TERRAIN_INFOS:
        return MaterialPageRoute(builder: (_) => const TerrainInfos());
      case TERRAIN_AVIS:
        return MaterialPageRoute(builder: (_) => const TerrainAvis());
      // case UPDATE_PAGE:
      //   final note = settings.arguments as Note;
      //   return MaterialPageRoute(
      //       builder: (_) => ModificationPage(
      //             note: note,
      //           ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
