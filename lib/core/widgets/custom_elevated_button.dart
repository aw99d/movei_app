import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/font_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String label;
  final Color? backgroundColor;
  final double? radius;
  final void Function()? onTap;
  final TextStyle? textStyle;
  final bool isStadiumBorder;

  const CustomElevatedButton({
    this.prefixIcon,
    this.textStyle,
    this.isStadiumBorder = false,
    this.backgroundColor,
    this.radius,
    this.suffixIcon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: isStadiumBorder
              ? const StadiumBorder()
              : RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          backgroundColor: backgroundColor ?? ColorManager.backgroundColorButton,
          padding: EdgeInsets.symmetric( vertical: 14.h),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixIcon ?? const SizedBox(),
            SizedBox(width: 24.w),
            Text(
              label,
              style:
                  textStyle ??
                  getRegularStyle(
                    color: ColorManager.black,
                  ).copyWith(fontSize: FontSize.s16),
            ),
            SizedBox(width: 27.w),
            suffixIcon ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
