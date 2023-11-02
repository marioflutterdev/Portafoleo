import 'package:flutter/material.dart';

import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        AreaInfoText(title: 'Contact', text: '+57 300 508 8310'),
        AreaInfoText(title: 'Email', text: 'mario.melo.dev@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@mariodev'),
        AreaInfoText(title: 'Github', text: '@marioflutterdev'),
        SizedBox(
          height: 20,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
