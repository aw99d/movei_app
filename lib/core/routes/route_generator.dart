
import 'package:flutter/material.dart';
import 'package:movei_app/core/routes/routes.dart';
import 'package:movei_app/core/widgets/bottom_nav_bar.dart';
import 'package:movei_app/features/auth/presentation/screens/login_screen.dart';
import 'package:movei_app/features/auth/presentation/screens/register_screen.dart';
import 'package:movei_app/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:movei_app/features/browser/presentation/screen/browser_screen.dart';
import 'package:movei_app/features/home/home_screen.dart';
import 'package:movei_app/features/movies/presentation/screen/movies_details_screen.dart';
import 'package:movei_app/features/profile/presentation/screen/edit_profile_screen.dart';
import 'package:movei_app/features/search/search_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => BottomNavBar());
      case Routes.search:
        return MaterialPageRoute(builder: (_) => SearchScreen());
      case Routes.browser:
        return MaterialPageRoute(builder: (_) => BrowserScreen());
      case Routes.moviesDetails:
        return MaterialPageRoute(builder: (_) => MoviesDetailsScreen());

        case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (_) => EditProfileScreen());

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
