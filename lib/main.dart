import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/provider/providers.dart';
import 'package:portafoleo/config/config.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => NavegacionDrawerProvider(),
    )
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      theme: context.watch<ThemeProvider>().themeData,
      routes: AppRoutes.routes,
    );
  }
}
