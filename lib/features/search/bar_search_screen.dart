import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';

class BarSearchScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Insets.s8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Insets.s12),
        // Use a Material design search bar
        child: TextField(
          style: TextStyle(color: Colors.white),
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: ColorManager.white),
            filled: true,
            fillColor: ColorManager.darkGrey,
            suffixIcon: IconButton(
              icon: Icon(Icons.clear, color: ColorManager.white),
              onPressed: () => _searchController.clear(),
            ),

            prefixIcon: IconButton(
              icon: SvgPicture.asset(SvgAssets.search),
              onPressed: () {},
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0.r),
              borderSide: BorderSide(color: ColorManager.darkGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0.r),
              borderSide: BorderSide(color: ColorManager.darkGrey, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
