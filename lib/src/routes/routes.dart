import 'package:flutter/material.dart';

import 'auth_routes.dart';
import 'home_routes.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  final Map<String, Function(RouteSettings)> allRoutes = {
    ...authRoutes,
    ...homeRoutes
  };
  if (allRoutes.containsKey(settings.name)) {
    return allRoutes[settings.name]!(settings);
  }
  return MaterialPageRoute(
    settings: settings,
    builder: (_) => Material(
      color: Colors.white,
      child: Center(
        child: Text(
          "INVALID ROUTE NAME: ${settings.name}",
          style: const 
          TextStyle(
            color: Colors.black
          ),
        ),
      ),
    )
  );
}