import 'package:flutter/material.dart';
import 'package:movei_app/core/routes/routes.dart';
import 'package:movei_app/features/auth/presentation/screens/login_screen.dart';
import 'package:movei_app/features/auth/presentation/screens/register_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('No Route Found')),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
