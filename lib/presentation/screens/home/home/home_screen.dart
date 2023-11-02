import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../config/config.dart';
import '../../../provider/providers.dart';
import '../../../widgets/widgets.dart';
import '../../screens.dart';
import '../widgets/footer_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final movile = AppResponsive.isLargeMobile(context);
    final pageController = context.watch<NavegacionDrawerProvider>();
    return ChangeNotifierProvider(
      create: (context) => MenuDrawerProvider(),
      child: Scaffold(
          body: Stack(
            children: [
              const _ScaffoldHome(),
              Positioned(
                right: movile ? 50 : 100,
                top: 50,
                child: const ConnectCustomWidget(
                    icon: FontAwesomeIcons.whatsapp,
                    text: 'WHATSAPP',
                    url: 'https://api.whatsapp.com/send/?phone=573005088310'),
              ),
              Positioned(
                top: movile ? 120 : 60,
                left: movile ? 50 : 200,
                child: _TopNavigator(
                  pageController: pageController,
                ),
              ),
              const MenuLeft(),
            ],
          ),
          drawer: const MenuLeft()),
    );
  }
}

class _ScaffoldHome extends StatelessWidget {
  const _ScaffoldHome();

  @override
  Widget build(BuildContext context) {
    final movile = AppResponsive.isLargeMobile(context);
    final pageController = context.watch<NavegacionDrawerProvider>();
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).colorScheme.background,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
            child: PageView(
              controller: pageController.pageController,
              children: const [
                AboutMeScreen(),
                ProjectsScreen(),
                CoursesScreen(),
              ],
            ),
          ),
          if (!movile)
            const Positioned(
              bottom: 0,
              child: Footer(),
            ),
        ],
      ),
    );
  }
}

class _TopNavigator extends StatelessWidget {
  const _TopNavigator({
    required this.pageController,
  });

  final NavegacionDrawerProvider pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationTextButton(
          onTap: () => pageController.paginaActual = 0,
          text: 'Home',
        ),
        NavigationTextButton(
          onTap: () => pageController.paginaActual = 1,
          text: 'Projects',
        ),
        NavigationTextButton(
          onTap: () => pageController.paginaActual = 2,
          text: 'Certifications',
        ),
      ],
    );
  }
}
