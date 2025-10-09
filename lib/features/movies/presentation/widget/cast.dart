import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/features/movies/presentation/widget/cast_items.dart';

class Cast extends StatelessWidget {
  CastItems castItems;
  Cast(this.castItems);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Insets.s12),
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(17.r),
      ),
      child: Row(
        children: [
          Image.asset(ImageAssets.getImage(castItems.imagename)),
          SizedBox(width: Sizes.s12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
            'Name: ${castItems.nams}', 
            style: getMediumStyle(
              color: ColorManager.white,
              fontSize: 16.sp,
            ),
          ),
                SizedBox(height: Sizes.s8.h),
              Text(
            'Character: ${castItems.characte}', 
            style: getMediumStyle(
              color: ColorManager.white,
              fontSize: 14.sp,
            ) )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
