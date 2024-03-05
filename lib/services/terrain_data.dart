class Terrain {
  final int id;
  final String imageLocation;
  final String title;
  final String subtitle;
  final String minPrice;
  final String maxPrice;
  final double rating;
  final String logo;

  Terrain({
    required this.id,
    required this.imageLocation,
    required this.title,
    required this.subtitle,
    required this.minPrice,
    required this.maxPrice,
    this.rating = 0.0,
    required this.logo,
  });
}

class TerrainData {
  static List<Terrain> terrains = [
    Terrain(
        id: 1,
        imageLocation: 'assets/images/rectangle-65.png',
        title: 'Terrain Sénégal Japon',
        subtitle: 'Rtes de l\'aéreport (Sud Foire, Dakar)',
        minPrice: '20.000',
        maxPrice: '70.000',
        rating: 4.0,
        logo: 'assets/images/image-64.png'),
    Terrain(
        id: 2,
        imageLocation: 'assets/images/rectangle-113-HE3.png',
        title: 'Terrain Dakar Sacré Coeur',
        subtitle: 'Route Nationale vers la VDN',
        minPrice: '30.000',
        maxPrice: '80.000',
        rating: 3.0,
        logo: 'assets/images/terrain_5.png'),
    Terrain(
        id: 3,
        imageLocation: 'assets/images/rectangle-65.png',
        title: 'Terrain Sénégal Japon',
        subtitle: 'Rtes de l\'aéreport (Sud Foire, Dakar)',
        minPrice: '20.000',
        maxPrice: '70.000',
        rating: 4.0,
        logo: 'assets/images/terrain_4.png'),
    Terrain(
        id: 4,
        imageLocation: 'assets/images/rectangle-113-HE3.png',
        title: 'Terrain Soumbédioune',
        subtitle: 'Corniche Ouest de Médina vers la Ville',
        minPrice: '10.000',
        maxPrice: '50.000',
        rating: 5.0,
        logo: 'assets/images/terrain_3.png'),
    Terrain(
        id: 5,
        imageLocation: 'assets/images/rectangle-113-HE3.png',
        title: 'Terrain Dakar Sacré Coeur',
        subtitle: 'Route Nationale vers la VDN',
        minPrice: '30.000',
        maxPrice: '80.000',
        rating: 3.0,
        logo: 'assets/images/terrain_2.png'),
  ];
}
