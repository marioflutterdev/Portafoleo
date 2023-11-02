import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafoleo/config/config.dart';

import '../../../widgets/widgets.dart';

const colorizeColors = [
  Color(0xFFffffff),
  Color(0xFF096e79),
  Color(0XFF00f7ff),
];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
);

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final table = AppResponsive.isTablet(context);
    final movile = AppResponsive.isLargeMobile(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (table)
          Row(
            mainAxisAlignment:
                movile ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              padding(table),
              const AnimatedContainerWidget(
                img: 'assets/img/flutter_logo.png',
              ),
            ],
          ),
        const SizedBox(height: 15),
        Row(
          children: [
            padding(table),
            const _AboutMe(),
            const Expanded(child: SizedBox()),
            if (!table)
              const AnimatedContainerWidget(
                img: 'assets/img/flutter_logo.png',
              ),
            padding(table),
          ],
        ),
      ],
    );
  }

  SizedBox padding(bool v) => SizedBox(width: v ? 20 : 100);
}

class _AboutMe extends StatelessWidget {
  const _AboutMe();

  @override
  Widget build(BuildContext context) {
    final movile = AppResponsive.isLargeMobile(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _TitleText(),
        FittedBox(
          fit: BoxFit.fill,
          child: SizedBox(
            width: movile ? 300 : 500,
            child: const Text(
              'I\'m passionate about mobile development with a strong background in creating innovative and functional applications for mobile devices.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const FittedBox(
          fit: BoxFit.fill,
          child: ConnectCustomWidget(
            icon: FontAwesomeIcons.folder,
            text: 'DOWNLOAD',
            url:
                'https://drive.google.com/file/d/1B-Oc4sOJ6rteA4DLTXxVy9RdlSfZTxl1/view',
          ),
        )
      ],
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText();

  @override
  Widget build(BuildContext context) {
    final movile = AppResponsive.isLargeMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'DEVELOPER OF ',
              style: TextStyle(fontSize: movile ? 40 : 50),
            ),
            if (!movile) const _AnimatedText(),
          ],
        ),
        if (movile) const _AnimatedText(),
      ],
    );
  }
}

class _AnimatedText extends StatelessWidget {
  const _AnimatedText();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            'FLUTTER',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'DART',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
        ],
        isRepeatingAnimation: true,
      ),
    );
  }
}
