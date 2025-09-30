import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/font_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/core/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageAssets.card,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: Sizes.s600.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageAssets.logo_home),
                      ),
                    ),
                    child: CarouselSlider(
                      items: [1, 2, 3, 4].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(16.r),
                              child: Image.asset(
                                ImageAssets.home_1.replaceFirst('1', '$i'),
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: Sizes.s250.h,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.4,
                        viewportFraction: 0.40,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(Insets.s8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Action',
                              style: getMediumStyle(
                                color: ColorManager.white,
                                fontSize: 20.sp,
                              ),
                            ),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'See More',
                                    style: getMediumStyle(
                                      color: ColorManager.yellow,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: Sizes.s2.w),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: ColorManager.yellow,
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 200.h,
                          child: ListView.separated(
                            scrollDirection:
                                Axis.horizontal, // عشان الصور تكون بالعرض
                            itemCount: 4, // عدد الصور
                            itemBuilder: (_, index) {
                              return Image.asset(
                                ImageAssets.home_1.replaceFirst(
                                  '1',
                                  '${index + 1}',
                                ),
                                width: 150.w,
                                height: 200.h,
                                fit: BoxFit.cover,
                              );
                            },
                            separatorBuilder: (_, __) =>
                                SizedBox(width: 12.w), // مسافة بين الصور
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(Insets.s8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Action',
                              style: getMediumStyle(
                                color: ColorManager.white,
                                fontSize: 20.sp,
                              ),
                            ),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'See More',
                                    style: getMediumStyle(
                                      color: ColorManager.yellow,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: Sizes.s2.w),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: ColorManager.yellow,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 200.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return Image.asset(
                                ImageAssets.home_1.replaceFirst(
                                  '1',
                                  '${index + 1}',
                                ),
                                width: 150.w,
                                height: 200.h,
                                fit: BoxFit.cover,
                              );
                            },
                            separatorBuilder: (_, __) => SizedBox(width: 12.w),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(Insets.s8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Action',
                              style: getMediumStyle(
                                color: ColorManager.white,
                                fontSize: 20.sp,
                              ),
                            ),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'See More',
                                    style: getMediumStyle(
                                      color: ColorManager.yellow,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: Sizes.s2.w),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: ColorManager.yellow,
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 200.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return Image.asset(
                                ImageAssets.home_1.replaceFirst(
                                  '1',
                                  '${index + 1}',
                                ),
                                width: 150.w,
                                height: 200.h,
                                fit: BoxFit.cover,
                              );
                            },
                            separatorBuilder: (_, __) => SizedBox(width: 12.w),
                          ),
                        ),
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
