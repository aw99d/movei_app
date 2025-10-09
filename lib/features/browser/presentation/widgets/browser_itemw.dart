import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/features/browser/presentation/widgets/item_tabbar_browser.dart';

class BrowserItemw extends StatelessWidget {
  ItemTabbarBrowser itemTabbarBrowser;
  bool isSelected;

  BrowserItemw({required this.isSelected, required this.itemTabbarBrowser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? ColorManager.yellow
            : ColorManager.transparent,
        borderRadius: BorderRadius.circular(12), 
        border: Border.all(
          color:
              ColorManager.yellow, 
          width: 2,
        ),
      ),
      child: Text(
        itemTabbarBrowser.name,
        style: getMediumStyle(
          color: isSelected ? ColorManager.black : ColorManager.yellow,
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
