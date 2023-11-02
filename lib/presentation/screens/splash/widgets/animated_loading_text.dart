import 'package:flutter/material.dart';
import 'package:portafoleo/config/theme/app_theme.dart';
import 'package:portafoleo/presentation/provider/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>().themeData;

    return SizedBox(
      width: 100,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        builder: (context, value, child) => Column(
          children: [
            themeProvider == dartMode
                ? LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    color: const Color(0XFF00fff1),
                    value: value,
                  )
                : LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    color: Colors.black,
                    value: value,
                  ),
            const SizedBox(height: 10),
            Text(
              '${(value * 100).toInt()}%',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
