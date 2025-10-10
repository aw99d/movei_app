import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';

class ScreenAppBar extends StatelessWidget  implements PreferredSizeWidget{
  String? title;
    List<Widget>? actions;

  ScreenAppBar({this.title , this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.black,
      iconTheme: IconThemeData(
    color: ColorManager.yellow, 
  ),
      centerTitle: true,
      title: Text(title ?? '', style: getMediumStyle(color: ColorManager.yellow , fontSize: 16.sp)),
      actions: actions ?? [],
    );
  }

  
  @override
  Size get preferredSize => Size(0, 60.h);
}
