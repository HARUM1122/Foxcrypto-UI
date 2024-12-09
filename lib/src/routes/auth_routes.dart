import 'package:flutter/material.dart';

import '../features/auth/screens/screens.dart';

final Map<String, Function(RouteSettings settings)> authRoutes = {
  '/login-and-signup-screen': (settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const LoginAndSignupScreen()
    );
  },
  '/login-screen': (settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const LoginScreen()
    );
  },
  '/signup-screen': (settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const SignupScreen()
    );
  },
};