import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/features/search/bar_search_screen.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              BarSearchScreen(),

              Expanded(
                child: Center(
                  child: Image.asset(
                    ImageAssets.search,
                    height: Sizes.s100.h,
                    width: double.infinity,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
