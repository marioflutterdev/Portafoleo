import 'package:flutter/material.dart';
import 'package:portafoleo/presentation/screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (p0) => const SplashScreen(),
    'home': (p0) => const HomeScreen(),
  };
}
