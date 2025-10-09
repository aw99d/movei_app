import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/core/routes/routes.dart';
import 'package:movei_app/core/widgets/custom_elevated_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(Insets.s18),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Image.asset(
                              ImageAssets.avatar_8,
                              width: 120.w,
                              height: 120.h,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'John Safwat',
                              style: getMediumStyle(
                                color: ColorManager.white,
                                fontSize: 16.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '12',
                                style: getMediumStyle(
                                  color: ColorManager.white,
                                  fontSize: 24.sp,
                                ),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Wish List',
                                style: getMediumStyle(
                                  color: ColorManager.white,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '34',
                                style: getMediumStyle(
                                  color: ColorManager.white,
                                  fontSize: 24.sp,
                                ),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'History',
                                style: getMediumStyle(
                                  color: ColorManager.white,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: Sizes.s10.h),

                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomElevatedButton(
                          label: 'Edit Profile',
                          onTap: () {
                            Navigator.of(
                              context,
                              rootNavigator: true,
                            ).pushNamed(Routes.editProfileScreen);
                          },
                        ),
                      ),
                      SizedBox(width: Sizes.s8.w),
                      Expanded(
                        flex: 1,
                        child: CustomElevatedButton(
                          label: 'Exit',
                          onTap: () {},
                          backgroundColor: ColorManager.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // TabBar + TabBarView
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: ColorManager.primary,
                      child: TabBar(
                        indicatorColor: Colors.yellow,
                        labelColor: Colors.amber,
                        unselectedLabelColor: Colors.white,
                        dividerColor: ColorManager.transparent,
                        tabs: [
                          Tab(
                            child: Text(
                              "History",
                              style: getMediumStyle(
                                color: ColorManager.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Watch List",
                              style: getMediumStyle(
                                color: ColorManager.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: ColorManager.black,
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: Container(
                                color: ColorManager.black,
                                child: Column(
                                  children: [Image.asset(ImageAssets.search)],
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Container(
                                color: ColorManager.black,
                                child: Column(
                                  children: [Image.asset(ImageAssets.search)],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
