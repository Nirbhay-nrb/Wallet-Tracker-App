import 'package:flutter/material.dart';

import '../routes/route_names.dart';
import '../screens/homepage.dart';
import '../screens/login_page.dart';
import '../screens/register_page.dart';
import '../screens/expenses_page.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homepage:
        return MaterialPageRoute<dynamic>(builder: (_) => HomePage());
      case RouteNames.login:
        return MaterialPageRoute<dynamic>(builder: (_) => LoginPage());
      case RouteNames.register:
        return MaterialPageRoute<dynamic>(builder: (_) => RegisterPage());
      case RouteNames.expenses:
        return MaterialPageRoute<dynamic>(builder: (_) => ExpensesPage());
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
