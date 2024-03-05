import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sunu_foot/pages/terrain_infos/terrain_infos_widgets/custom_container.dart';
import 'package:sunu_foot/pages/utils_widgets/header_container.dart';
import 'package:sunu_foot/provider/terrain_provider.dart';
import 'package:sunu_foot/services/terrain_data.dart';

class TerrainInfos extends StatelessWidget {
  const TerrainInfos({super.key});

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
              infos: true,
            ),
            Expanded(
              // LE GRAND CONTAINER GRIS
              child: Container(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
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
                      // LE CONTAINER A PROPOS
                      CustomContainer(
                        width: 335,
                        height: 119,
                        children: [
                          Text(
                            'A propos',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 10.sp,
                                color:
                                    Colors.black, // Couleur par défaut du texte
                              ),
                              children: const [
                                TextSpan(
                                  text:
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. mattis ac mi. Donec porta suscipit nunc, quis suscipit velit cursus id. Donec suscipit tincidunt urna quis rutrum. Mauris congue neque at ante aliquet tempor...',
                                ),
                                TextSpan(
                                  text: 'Lire la suite ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // LE CONTAINER CONTACT
                      CustomContainer(
                        width: 335,
                        height: 179,
                        children: [
                          Expanded(
                            child: Text(
                              'Contacts',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          // LIGNE TELEPHONE FIXE
                          Expanded(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  color: Color.fromARGB(255, 150, 148, 148),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Fixe :',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '(+221) 33 298 87 87',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          // LIGNE TELEPHONE MOBILE
                          Expanded(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  color: Color.fromARGB(255, 150, 148, 148),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Mobile :',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '(+221) 77 639 22 22',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          // LIGNE ADREESE EMAIL
                          Expanded(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.mail,
                                  color: Color.fromARGB(255, 150, 148, 148),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'E-mail :',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'contact@senegaljapon.sn',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      // LE ROW QUI CONTIENT LE TITRE DE LA CARTE MAP
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 15.sp,
                          ),
                          Text(
                            'Rte de l\'aéreport (Sud Foire), Dakar',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      // LE CONTAINER QUI CONTIENT LA CARTE MAP
                      Container(
                        width: 335.w,
                        height: 119.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/rectangle-115-bg.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // LE CONTAINER PERMIS
                      CustomContainer(
                        width: 335,
                        height: 205,
                        children: [
                          Text(
                            'Permis',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // PREMIERE LIGNE
                          Row(
                            children: [
                              // ICONE
                              Container(
                                height: 20.h,
                                width: 20.w,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check, // Icôre de filtre
                                    color: Colors.white,
                                    size: 10.sp, // Couleur blanche de l'icône
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              // TEXTE
                              Text(
                                'Matchs enfants / adultes',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // DEUXIEME LIGNE
                          Row(
                            children: [
                              // ICONE
                              Container(
                                height: 20.h,
                                width: 20.w,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check, // Icôre de filtre
                                    color: Colors.white,
                                    size: 10.sp, // Couleur blanche de l'icône
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              // TEXTE
                              Text(
                                'Chaussures tout térrain',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // TROISIEME LIGNE
                          Row(
                            children: [
                              // ICONE
                              Container(
                                height: 20.h,
                                width: 20.w,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check, // Icôre de filtre
                                    color: Colors.white,
                                    size: 10.sp, // Couleur blanche de l'icône
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              // TEXTE
                              Text(
                                'Apporter de l’eau (bouteilles plastiques)',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // QUATRIEME LIGNE
                          Row(
                            children: [
                              // ICONE
                              Container(
                                height: 20.h,
                                width: 20.w,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check, // Icôre de filtre
                                    color: Colors.white,
                                    size: 10.sp, // Couleur blanche de l'icône
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              // TEXTE
                              Text(
                                'Staff / Accompagnants (maximum: 10 personnes)',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // LE CONTAINER INTERDITS
                      CustomContainer(
                        width: 335,
                        height: 205,
                        children: [
                          Text(
                            'Interdits',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // PREMIERE LIGNE
                          Row(
                            children: [
                              // ICONE
                              Container(
                                height: 20.h,
                                width: 20.w,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.red, // Couleur de fond verte
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.clear, // Icôre de filtre
                                  color: Colors.white,
                                  size: 10.sp, // Couleur blanche de l'icône
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              // TEXTE
                              Text(
                                'Apporter de la nourriture',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // DEUXIEME LIGNE
                          Row(
                            children: [
                              // ICONE
                              Container(
                                height: 20.h,
                                width: 20.w,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.red, // Couleur de fond verte
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.clear, // Icôre de filtre
                                  color: Colors.white,
                                  size: 10.sp, // Couleur blanche de l'icône
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              // TEXTE
                              Text(
                                'Chaussures à crampon',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // TROISIEME LIGNE
                          Row(
                            children: [
                              // ICONE
                              Container(
                                height: 20.h,
                                width: 20.w,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.red, // Couleur de fond verte
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.clear, // Icôre de filtre
                                  color: Colors.white,
                                  size: 10.sp, // Couleur blanche de l'icône
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              // TEXTE
                              Text(
                                'Apporter de l’eau (bouteilles plastiques)',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          // QUATRIEME LIGNE
                          Row(
                            children: [
                              // ICONE
                              Container(
                                height: 20.h,
                                width: 20.w,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.red, // Couleur de fond verte
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.clear, // Icôre de filtre
                                  color: Colors.white,
                                  size: 10.sp, // Couleur blanche de l'icône
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              // TEXTE
                              Text(
                                'Staff / Accompagnants (maximum: 10 personnes)',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
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
