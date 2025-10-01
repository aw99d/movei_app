import 'package:flutter/material.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/features/browser/browser_screen.dart';
import 'package:movei_app/features/home/home_screen.dart';
import 'package:movei_app/features/profile/presentation/screen/profile_screen.dart';
import 'package:movei_app/features/search/search_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
  
}

class _BottomNavBarState extends State<BottomNavBar> {

 late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
     HomeScreen(),
     SearchScreen(),
     BrowserScreen(),
     ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
            activeColorPrimary: ColorManager.yellow,
        inactiveColorPrimary: ColorManager.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.search),
        title: "Search",
               activeColorPrimary: ColorManager.yellow,
        inactiveColorPrimary: ColorManager.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.open_in_browser),
        title: "Notifications",
                activeColorPrimary: ColorManager.yellow,
        inactiveColorPrimary: ColorManager.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: "Profile",
        activeColorPrimary: ColorManager.yellow,
        inactiveColorPrimary: ColorManager.white,
      ),
    ];
  }
@override
Widget build(BuildContext context) {
  return PersistentTabView(
    context,
    controller: _controller,
    screens: _buildScreens(),
    items: _navBarsItems(),
    confineToSafeArea: true,
    backgroundColor: ColorManager.primary,
    handleAndroidBackButtonPress: true,
    resizeToAvoidBottomInset: true,
    stateManagement: true,
    navBarStyle: NavBarStyle.style13,

  ); 
}

}
