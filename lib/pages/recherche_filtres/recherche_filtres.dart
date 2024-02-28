import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/big_container_widget.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/bottom_navigator_container.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres_widgets/small_container_widget.dart';
import 'package:sunu_foot/pages/utils_widgets/rating_bar.dart';

class RechercheFiltres extends StatelessWidget {
  const RechercheFiltres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // EN TETE DE LA PAGE
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 35.h, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fermer',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 13.sp,
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        // LE GRAND CONTAINER GRIS
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(
            left: 20.w,
            top: 20.h,
            right: 20.w,
          ),
          margin: EdgeInsets.only(top: 20.sp),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 218, 215, 215),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r))),
          child: Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // LE TITRE FILTRER PAR
                  Row(
                    children: [
                      Text(
                        'Filtrer par :',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // LE PREMIER CONTAINER
                  BigContainer(
                    height: 90,
                    text: 'Localisation du terrain',
                    secondRow: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 44, 160, 48),
                          borderRadius: 10,
                          children: [
                            RoundCheckBox(
                              size: 20.sp,
                              uncheckedColor: Colors.white,
                              onTap: (selected) {
                                print(selected);
                              },
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Plus près de moi',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            RoundCheckBox(
                              size: 20.sp,
                              uncheckedColor: Colors.white,
                              borderColor: Colors.green,
                              onTap: (selected) {},
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Choisir une zone',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
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
                  // LE DEUXIEME CONTAINER
                  BigContainer(
                    height: 90,
                    text: 'Prix location',
                    secondRow: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Text(
                              'De :',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '0 fr',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Text(
                              'A :',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '50 000 fr',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
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
                  // LE TROISIEME CONTAINER
                  BigContainer(
                    height: 136,
                    text: 'Nombre de joueurs par match',
                    secondRow: Wrap(
                      spacing: 10.w,
                      runSpacing: 10.h,
                      children: [
                        GroupButton(
                          isRadio: false,
                          // onSelected: (index, isSelected) =>
                          //     print('$index button is selected'),
                          buttons: const ["5", "6", "7", "8", "9", "10"],
                          options: GroupButtonOptions(
                            borderRadius: BorderRadius.circular(10.r),
                            selectedShadow: const [],
                            selectedTextStyle: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            selectedColor: Colors.green,
                            unselectedShadow: const [],
                            unselectedColor:
                                const Color.fromARGB(255, 231, 230, 230),
                            unselectedTextStyle: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            selectedBorderColor:
                                const Color.fromARGB(255, 197, 196, 197),
                            unselectedBorderColor: Colors.green,
                            spacing: 10,
                            runSpacing: 10,
                            groupingType: GroupingType.wrap,
                            direction: Axis.horizontal,
                            buttonHeight: 34.h,
                            buttonWidth: 65.w,
                            mainGroupAlignment: MainGroupAlignment.start,
                            crossGroupAlignment: CrossGroupAlignment.start,
                            groupRunAlignment: GroupRunAlignment.start,
                            textAlign: TextAlign.center,
                            textPadding: EdgeInsets.zero,
                            alignment: Alignment.center,
                            elevation: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // LE QUATRIEME CONTAINER
                  BigContainer(
                    height: 90,
                    text: 'Date de disponibilité',
                    secondRow: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Text(
                              'De :',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '27 février',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SmallContainer(
                          pading: EdgeInsets.symmetric(horizontal: 10.w),
                          width: 145,
                          height: 34,
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: 10,
                          children: [
                            Text(
                              'A :',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '28 février',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
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
                  // LE CINQUIEME CONTAINER
                  BigContainer(
                    height: 90,
                    text: 'Avis (nombre d\'étoiles)',
                    secondRow: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomRatingBar(
                          itemSize: 20,
                          initialRating: 5,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          size: 10,
                          color: Colors.green,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(), // Utilisation du CustomBottomNavigationBar
    );
  }
}
