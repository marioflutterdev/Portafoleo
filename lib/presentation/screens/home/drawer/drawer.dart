import 'package:flutter/material.dart';

import 'components/about.dart';
import 'components/contact_icons.dart';
import 'components/my_skill.dart';
import 'components/personal_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: const SingleChildScrollView(
        child: Column(
          children: [
            About(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfo(),
                  MySKills(),
                  Divider(),
                  ContactIcon(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
