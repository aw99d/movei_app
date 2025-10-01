import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/core/widgets/custom_elevated_button.dart';
import 'package:movei_app/core/widgets/screen_app_bar.dart';
import 'package:movei_app/features/movies/presentation/widget/cast.dart';
import 'package:movei_app/features/movies/presentation/widget/cast_items.dart';
import 'package:movei_app/features/movies/presentation/widget/genres.dart';
import 'package:movei_app/features/movies/presentation/widget/genres_item.dart';
import 'package:readmore/readmore.dart';

class MoviesDetailsScreen extends StatelessWidget {
  final double imageHeight = 530.h;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkblack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: imageHeight,
              child: Stack(
                children: [
                  Image.asset(
                    ImageAssets.home_5,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        ImageAssets.shodw,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      Positioned(
                        top: 20.h,
                        left: 10.w,
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: SvgPicture.asset(
                            SvgAssets.iconsback,
                            width: 15.w,
                          ),
                        ),
                      ),

                      Positioned(
                        top: 20.h,
                        right: 10.w,
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(SvgAssets.vector, width: 15.w),
                        ),
                      ),

                      Positioned(
                        top: imageHeight * 0.3,
                        left: 0,
                        right: 0,
                        child: Image.asset(ImageAssets.play, height: 80.h),
                      ),

                      Positioned(
                        bottom: 10.h,
                        left: 20.w,
                        right: 20.w,
                        child: Column(
                          children: [
                            Text(
                              'Doctor Strange in the Multiverse of Madness',
                              style: getBoldStyle(
                                color: ColorManager.containerGray,
                                fontSize: 22.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              '2020',
                              style: getBoldStyle(
                                color: ColorManager.white,
                                fontSize: 16.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: imageHeight * 0.0115),

            Padding(
              padding: EdgeInsets.all(Insets.s5.w),
              child: CustomElevatedButton(
                label: 'Watch',
                onTap: () {},
                backgroundColor: ColorManager.red,
              ),
            ),
            SizedBox(height: imageHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.s8.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgAssets.heart,
                            width: Sizes.s24.w,
                            height: Sizes.s24.h,
                          ),
                          SizedBox(width: Sizes.s8.w),
                          FittedBox(
                            child: Text(
                              '15',
                              style: getRegularStyle(
                                color: ColorManager.white,
                                fontSize: 24.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgAssets.hour,
                            width: Sizes.s24.w,
                            height: Sizes.s24.h,
                          ),
                          SizedBox(width: Sizes.s8.w),
                          FittedBox(
                            child: Text(
                              '90',
                              style: getRegularStyle(
                                color: ColorManager.white,
                                fontSize: 24.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgAssets.star,
                            width: Sizes.s24.w,
                            height: Sizes.s24.h,
                          ),
                          SizedBox(width: Sizes.s8.w),
                          FittedBox(
                            child: Text(
                              '0.9',
                              style: getRegularStyle(
                                color: ColorManager.white,
                                fontSize: 24.sp,
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

            Padding(
              padding: EdgeInsets.all(Sizes.s8),
              child: Row(
                children: [
                  Text(
                    'Screen Shots',
                    style: getMediumStyle(
                      color: ColorManager.white,
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Sizes.s10),
              child: Column(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: Sizes.s8.h),
                    child: Image.asset(
                      ImageAssets.largescreenshot1.replaceFirst(
                        '1',
                        '${index + 1}',
                      ),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(Sizes.s10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Similar',
                        style: getMediumStyle(
                          color: ColorManager.white,
                          fontSize: 24.sp,
                        ),
                      ),
                    ],
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.w,
                      mainAxisSpacing: 8.h,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        ImageAssets.home_1.replaceFirst('1', '${index + 1}'),
                        fit: BoxFit.fitWidth,
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Insets.s12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Summary',
                    style: getMediumStyle(
                      color: ColorManager.white,
                      fontSize: 20.sp,
                    ),
                  ),

                  ReadMoreText(
                    'Following the events of Spider-Man No Way Home, Doctor Strange unwittingly casts a forbidden spell that accidentally opens up the multiverse. With help from Wong and Scarlet Witch, Strange confronts various versions of himself as well as teaming up with the young America Chavez while traveling through various realities and working to restore reality as he knows it. Along the way, Strange and his allies realize they must take on a powerful new adversary who seeks to take over the multiverse.—Blazer346. 0',
                    style: getLightStyle(
                      color: ColorManager.white,
                      fontSize: 16.sp,
                    ),
                    trimMode: TrimMode.Line,
                    trimLines: 4,
                    colorClickableText: ColorManager.yellow,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(Insets.s12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cast',
                    style: getMediumStyle(
                      color: ColorManager.white,
                      fontSize: 20.sp,
                    ),
                  ),

                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) => Cast(CastItems.catItem[index]),
                    separatorBuilder: (_, _) => SizedBox(height: Sizes.s10.h),
                    itemCount: CastItems.catItem.length,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(Insets.s12),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Genres',
                    style: getMediumStyle(
                      color: ColorManager.white,
                      fontSize: 20.sp,
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.w,
                      mainAxisSpacing: 8.h,
                      childAspectRatio: 3.4,
                    ),
                    itemCount: GenresItem.genresItem.length,
                    itemBuilder: (_, index) =>
                        Genres(GenresItem.genresItem[index]),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
