import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/recherche_filtres/recherche_filtres.dart';
// import 'package:sunu_foot/pages/home_page/home_page.dart';
// import 'package:sunu_foot/pages/home_recherche/home_recherche.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          home: RechercheFiltres(),
        );
      },
      child: const RechercheFiltres(),
    );
  }
}
