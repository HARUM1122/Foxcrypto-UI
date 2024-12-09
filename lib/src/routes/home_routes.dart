import 'package:flutter/material.dart';

import '../home/screens/home_screen.dart';

final Map<String, Function(RouteSettings settings)> homeRoutes = {
  '/home-screen': (settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const HomeScreen()
    );
  }
};