import 'package:flutter/material.dart';
import 'package:sunu_foot/services/terrain_data.dart';

class TerrainProvider extends ChangeNotifier {
  Terrain? _terrain;

  Terrain? get terrain => _terrain;

  void setTerrain(Terrain terrain) {
    _terrain = terrain;
    notifyListeners();
  }
}
