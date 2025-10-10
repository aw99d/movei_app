import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/di/service_locator.dart';
import 'package:movei_app/core/routes/route_generator.dart';
import 'package:movei_app/core/routes/routes.dart';
import 'package:movei_app/core/widgets/app_bloc_observer.dart';
import 'package:movei_app/features/auth/presentation/cubit/auth_cubit.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await configureDependencies();
  runApp(MobiesApp());
}

class MobiesApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => serverLocator.get<AuthCubit>(),
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.login,
          
          // home: BottomNavBar(),
        ),
      ),
    );
  }
}
