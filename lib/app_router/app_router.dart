import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/pages/landing_page.dart';
import 'package:flutter_test1/presentation/pages/new_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LandingPage.route:
        return MaterialPageRoute(
          builder: (_) => LandingPage(appTitle: 'Calculator'),
        );
      case NewPage.route:
        return MaterialPageRoute(builder: (_) => NewPage());
      default:
        return MaterialPageRoute(
          builder: (_) => LandingPage(appTitle: 'Calculator'),
        );
    }
  }
}
