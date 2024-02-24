import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/utils_widgets/menu_item_container.dart';

class HeaderContainer extends StatelessWidget {
  final bool? reservation;
  final bool? gallerie;
  final bool? infos;
  final bool? avis;

  const HeaderContainer({
    Key? key,
    this.reservation = false,
    this.gallerie = false,
    this.infos = false,
    this.avis = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.arrow_back,
                  size: 30.sp,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.sp),
                margin: EdgeInsets.only(top: 30.h),
                width: 60.w,
                height: 60.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 239, 237),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/image-64.png',
                    width: 50.w,
                    height: 50.h,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    '198',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Terrain Sénégal Japon',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Rtes de l\'aéreport (Sud Foire), Dakar',
                style: TextStyle(
                  fontSize: 11.sp,
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    size: 17.sp,
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    size: 17.sp,
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    size: 17.sp,
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    size: 17.sp,
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    size: 17.sp,
                    Icons.star,
                    color: const Color.fromARGB(255, 236, 236, 235),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MenuItemContainer(
                text: 'Réservation',
                color: reservation == true
                    ? const Color(0xff1f243b)
                    : const Color.fromARGB(255, 121, 121, 122),
                border: reservation == true
                    ? Border(
                        bottom: BorderSide(
                          width: 2.w,
                          color: const Color(0xff1f243b),
                        ),
                      )
                    : null,
              ),
              MenuItemContainer(
                text: 'Gallerie',
                color: gallerie == true
                    ? const Color(0xff1f243b)
                    : const Color.fromARGB(255, 121, 121, 122),
                border: gallerie == true
                    ? Border(
                        bottom: BorderSide(
                          width: 2.w,
                          color: const Color(0xff1f243b),
                        ),
                      )
                    : null,
              ),
              MenuItemContainer(
                text: 'Infos',
                color: infos == true
                    ? const Color(0xff1f243b)
                    : const Color.fromARGB(255, 121, 121, 122),
                border: infos == true
                    ? Border(
                        bottom: BorderSide(
                          width: 2.w,
                          color: const Color(0xff1f243b),
                        ),
                      )
                    : null,
              ),
              MenuItemContainer(
                text: 'Avis',
                color: avis == true
                    ? const Color(0xff1f243b)
                    : const Color.fromARGB(255, 121, 121, 122),
                border: avis == true
                    ? Border(
                        bottom: BorderSide(
                          width: 2.w,
                          color: const Color(0xff1f243b),
                        ),
                      )
                    : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
