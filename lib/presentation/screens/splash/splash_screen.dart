import 'dart:async';

import 'package:flutter/material.dart';

import 'package:portafoleo/presentation/screens/splash/widgets/animated_loading_text.dart';
import 'package:portafoleo/presentation/screens/screens.dart';
import '../../widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainerWidget(
              width: 100,
              height: 100,
              img: 'assets/img/dash.png',
            ),
            SizedBox(height: 20),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
