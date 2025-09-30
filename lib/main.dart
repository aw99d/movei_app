import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/routes/route_generator.dart';
import 'package:movei_app/core/routes/routes.dart';
import 'package:movei_app/core/widgets/bottom_nav_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MobiesApp(), // صححت هنا
    ),
  );
}


class MobiesApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (_,__) => MaterialApp(
        debugShowCheckedModeBanner: false,
       
       onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.login,
      ),

    );
  }
}