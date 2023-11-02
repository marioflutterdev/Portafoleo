import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:portafoleo/presentation/widgets/widgets.dart';

class ConnectCustomWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final String url;

  const ConnectCustomWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return OnHoverCustomWidget(
      builder: (isHovered) => InkWell(
        onTap: () {
          launchUrl(Uri.parse(url));
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  Color(0XFF00f7ff),
                  Color(0xFF096e79),
                ],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-2, 0),
                  blurRadius: 5,
                ),
                BoxShadow(
                  color: Color(0XFF00f7ff),
                  offset: Offset(2, 0),
                  blurRadius: 5,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                FittedBox(
                  child: Icon(
                    icon,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 5),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      text,
                      textStyle: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 2,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
                const Expanded(child: SizedBox()),
              ],
            )),
      ),
    );
  }
}
