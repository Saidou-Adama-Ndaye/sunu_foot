import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/home_page/home_page_widgets/terrain_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DateTime _selectedValue; // Déclaration de la variable _selectedValue

  @override
  void initState() {
    super.initState();
    _selectedValue = DateTime.now(); // Initialisation avec la date actuelle
  }

  List<DateTime> inactiveDates = [
    DateTime.now().subtract(Duration(days: 1)), // Par exemple, hier
    DateTime.now().add(Duration(days: 1)), // Par exemple, demain
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
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
              //LE WIDGET QUI CONTIENT LE TITRE TERRAIN DISPONIBLE
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
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
              //LE CONTAINER QUI CONTIENT LE FORMULAIRE DE RECHERCHE
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: 335.w,
                  height: 167.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 222, 222),
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
                          onPressed: () {},
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
                // LE GRAND CONTAINER GRIS
                child: Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 221, 221),
                  ),
                  // LE COLUMN QUI CONTIENT TOUS LES ELEMENTS DU CONTAINER GRIS
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        // LE DATELINE
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: DatePicker(
                            DateTime.now(),
                            width: 72.w,
                            height: 72.h,
                            initialSelectedDate: DateTime.now(),
                            // selectionColor: const Color(0xff1f243b),
                            selectionColor: Color(0xff1f243b),
                            selectedTextColor: Colors.white,
                            deactivatedColor:
                                const Color.fromARGB(255, 85, 17, 17),
                            monthTextStyle: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1f243b),
                            ),
                            dateTextStyle: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1f243b),
                            ),
                            dayTextStyle: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1f243b),
                            ),
                            locale: "fr_FR",
                            onDateChange: (date) {
                              // New date selected
                              setState(
                                () {
                                  _selectedValue = date;
                                  print(_selectedValue);
                                },
                              );
                            },
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
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.green,
          items: const [
            TabItem(icon: Icons.home_outlined, title: 'Home'),
            TabItem(icon: Icons.favorite_outline, title: 'Mes favoris'),
            TabItem(icon: Icons.currency_pound, title: 'Compétitions'),
            TabItem(icon: Icons.person_2_outlined, title: 'Mon Compte'),
          ],
          onTap: (int i) => print('click index=$i'),
        ));
  }
}
