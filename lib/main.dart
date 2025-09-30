import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/routes/route_generator.dart';
import 'package:movei_app/core/routes/routes.dart';

void main() {
  runApp(MobiesApp());
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