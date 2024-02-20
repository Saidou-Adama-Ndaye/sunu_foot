import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/home/home_page_widgets/terrain_container.dart';
import 'package:sunu_foot/pages/utils_widgets/date_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              //##########################################################################################################################################
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              // LE ROW QUI CONTIENT L'ENTETE, LE LOGO ETC...
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/group-41.png',
                        width: 36.w,
                        height: 36.h,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sunu\nFoot',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/alarme.png',
                        width: 20.w,
                        height: 22.h,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/images/search.png',
                        width: 20.w,
                        height: 22.h,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              //##########################################################################################################################################
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              //LE WIDGET QUI CONTIENT LE TITRE TERRAIN DISPONIBLE
              child: Text(
                'Terrains disponibles',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              //##########################################################################################################################################
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              //LE CONTAINER QUI CONTIENT LE FORMULAIRE DE RECHERCHE
              child: Container(
                width: 335.w,
                height: 167.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 240, 240),
                  border: Border.all(
                    color: Colors.green,
                    width: 3.w,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft:
                        Radius.circular(10), // Coin supérieur gauche arrondi
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(
                        10), // Coin inférieur gauche non arrondi
                    bottomRight: Radius.circular(
                        10), // Coin inférieur droit non arrondi // Coin supérieur droit arrondi
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Lieu : partout',
                          prefixIcon: Icon(Icons.location_on),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Date',
                          prefixIcon: Icon(Icons.calendar_today),
                        ),
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                          if (pickedDate != null) {
                            print('Date selected: $pickedDate');
                          }
                        },
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Nombre de joueurs conseillés',
                          prefixIcon: Icon(Icons.people),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Colors.green, // Couleur de fond verte
                        border: Border.all(
                          color: Colors.green,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Action à effectuer lorsque le bouton est pressé
                        },
                        child: const Text(
                          'Rechercher',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              //############################################################################################################################################
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                height: 45.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 240, 240),
                  border: Border.all(
                    color: Colors.green,
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        // LE ROW QUI CONTIENT LES JOURS DE LA SEMAINE
                        child: Row(
                          children: [
                            const CustomDateContainer(
                              text: 'Jeu\n09\nMars',
                              backgroundColor: Color(0xff1f243b),
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 10.w),
                            const CustomDateContainer(
                              text: 'Ven\n10\nMars',
                              backgroundColor: Color(0xffffffff),
                              textColor: Colors.black,
                            ),
                            SizedBox(width: 10.w),
                            const CustomDateContainer(
                              text: 'Sam\n11\nMars',
                              backgroundColor: Color(0xffffffff),
                              textColor: Colors.black,
                            ),
                            SizedBox(width: 10.w),
                            const CustomDateContainer(
                              text: 'Dim\n012\nMars',
                              backgroundColor: Color(0xffffffff),
                              textColor: Colors.black,
                            ),
                            SizedBox(width: 10.w),
                            const CustomDateContainer(
                              text: 'Lun\n13\nMars',
                              backgroundColor: Color(0xffffffff),
                              textColor: Colors.black,
                            ),
                            SizedBox(width: 10.w),
                            const CustomDateContainer(
                              text: 'Mar\n14\nMars',
                              backgroundColor: Color(0xffffffff),
                              textColor: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // LE PREMIERE CONTAINER DE LA RECCHERCHE
                      const CustomTerrainContainer(
                        imageLocation: 'assets/images/rectangle-65.png',
                        title: 'Terrain Sénégal Japon',
                        subtitle: 'Rtes de l\'aéreport (Sud Foire,  Dakar)',
                        minPrice: '20.000',
                        maxPrice: '70.000',
                        isFavorite: true,
                      ),
                      SizedBox(height: 10.h),
                      // LE DEUXIEME CONTAINER DE LA RECHERCHE
                      const CustomTerrainContainer(
                        imageLocation: 'assets/images/rectangle-113-HE3.png',
                        title: 'Dakar Sacré Coeur',
                        subtitle: 'Route National vers la VDN',
                        minPrice: '30.000',
                        maxPrice: '08.000',
                      ),
                      SizedBox(height: 10.h),
                      // LE TROISIEME CONTAINER DE LA RECHERCHE
                      const CustomTerrainContainer(
                        imageLocation: 'assets/images/rectangle-65.png',
                        title: 'Dakar Sacré Coeur',
                        subtitle: 'Route National vers la VDN',
                        minPrice: '30.000',
                        maxPrice: '08.000',
                        isFavorite: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green, // Couleur des icônes sélectionnées
        unselectedItemColor:
            Colors.grey, // Couleur des icônes non sélectionnées
        selectedLabelStyle: const TextStyle(
            color: Colors.black), // Style des labels des icônes sélectionnées
        unselectedLabelStyle: const TextStyle(
            color:
                Colors.black), // Style des labels des icônes non sélectionnées
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Mes favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Compétition',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mon compte',
          ),
        ],
      ),
    );
  }
}
