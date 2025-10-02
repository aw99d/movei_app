import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/features/browser/presentation/widgets/browser_itemw.dart';
import 'package:movei_app/features/browser/presentation/widgets/item_tabbar_browser.dart';

class BrowserScreen extends StatefulWidget {
  @override
  State<BrowserScreen> createState() => _BrowserScreenState();
}

int currentIndex = 0;

class _BrowserScreenState extends State<BrowserScreen> {
  List<ItemTabbarBrowser> items = [
    ItemTabbarBrowser(name: 'Action'),
    ItemTabbarBrowser(name: 'Animation'),
    ItemTabbarBrowser(name: 'Adventure'),
    ItemTabbarBrowser(name: 'Comedy'),
    ItemTabbarBrowser(name: 'Horror'),
    ItemTabbarBrowser(name: 'Horror'),
    ItemTabbarBrowser(name: 'Horror'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(top: Insets.s20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DefaultTabController(
                  length: items.length,
                  child: TabBar(
                    isScrollable: true,
                    dividerColor: ColorManager.transparent,
                    indicatorColor: ColorManager.transparent,
                    tabAlignment: TabAlignment.start,
                    labelPadding: EdgeInsetsDirectional.only(
                      start: Insets.s12.w,
                    ),
                    tabs: items
                        .map(
                          (item) => BrowserItemw(
                            isSelected: currentIndex == items.indexOf(item),
                            itemTabbarBrowser: item,
                          ),
                        )
                        .toList(),

                    onTap: (value) {
                      if (currentIndex == value) return;
                      currentIndex = value;

                      setState(() {});
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(Insets.s20.h),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        ImageAssets.home_1.replaceFirst('1', '${index + 1}'),
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
