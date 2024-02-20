import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTerrainContainer extends StatelessWidget {
  final String imageLocation;
  final String title;
  final String subtitle;
  final String minPrice;
  final String maxPrice;
  final bool isFavorite;

  const CustomTerrainContainer({
    Key? key,
    required this.imageLocation,
    required this.title,
    required this.subtitle,
    required this.minPrice,
    required this.maxPrice,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            width: 92.w,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(imageLocation),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      (isFavorite)
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            )
                    ],
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Icon(
                          Icons.star,
                          color: i < 4 ? Colors.orange : Colors.grey,
                          size: 15.sp,
                        ),
                    ],
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Row(
                    children: [
                      Text(
                        'Prix: ',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        minPrice,
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.green,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        ' - ',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        maxPrice,
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.green,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        'fr',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
