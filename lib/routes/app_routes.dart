import 'package:flutter/material.dart';
import 'package:wallet_tracker/routes/route_names.dart';

import '../screens/homepage.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homepage:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
