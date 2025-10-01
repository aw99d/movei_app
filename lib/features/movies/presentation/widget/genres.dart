import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/features/movies/presentation/widget/genres_item.dart';

class Genres extends StatelessWidget {
 final GenresItem genresItem;
Genres(this.genresItem);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  decoration: BoxDecoration(
    color: Colors.grey[800],
    borderRadius: BorderRadius.circular(12),
  ),

      child: Text('${genresItem.name}' , style: getMediumStyle(color: ColorManager.white , fontSize: 18.sp),  textAlign: TextAlign.center,),
    );
  }
}