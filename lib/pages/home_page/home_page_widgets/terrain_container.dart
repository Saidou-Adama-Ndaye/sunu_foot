import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunu_foot/pages/home_page/home_page_widgets/time_container.dart';
import 'package:sunu_foot/pages/utils_widgets/like_button.dart';
import 'package:sunu_foot/pages/utils_widgets/rating_bar.dart';

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
      height: 152.h,
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
                      CustomLikeButton(
                        size: 20.0,
                        onTap: (bool isLiked) {
                          // Mettez votre logique ici
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomRatingBar(
                        itemSize: 13,
                        initialRating: 4,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        size: 10,
                        color: Colors.amber,
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
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
                  SizedBox(height: 10.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const CustomTimeContainer(
                            starTime: '10h', endTime: '11h'),
                        SizedBox(width: 10.w),
                        const CustomTimeContainer(
                            starTime: '11h', endTime: '12h'),
                        SizedBox(width: 10.w),
                        const CustomTimeContainer(
                            starTime: '12h', endTime: '13h'),
                        SizedBox(width: 10.w),
                        const CustomTimeContainer(
                            starTime: '13h', endTime: '14h'),
                        SizedBox(width: 10.w),
                        const CustomTimeContainer(
                            starTime: '14h', endTime: '15h'),
                      ],
                    ),
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
