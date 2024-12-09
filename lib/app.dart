import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/routes/routes.dart';
import 'src/home/screens/on_boarding/on_boarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black.withOpacity(0.002),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.black.withOpacity(0.002),
        systemNavigationBarIconBrightness: Brightness.light
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: SystemUiOverlay.values
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent
        ),
        fontFamily: 'Poppins',
      ),
      onGenerateRoute: generateRoutes,
      home: const OnBoardingScreen(),
    );
  }
}