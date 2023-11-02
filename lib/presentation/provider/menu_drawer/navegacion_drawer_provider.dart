import 'package:flutter/material.dart';

class NavegacionDrawerProvider extends ChangeNotifier {
  int _paginaActual = 0;

  final PageController _pageController = PageController();

  int get paginaActual => _paginaActual;

  set paginaActual(int value) {
    _paginaActual = value;

    _pageController.animateToPage(
      value,
      curve: Curves.easeInOutCubic,
      duration: const Duration(milliseconds: 500),
    );

    notifyListeners();
  }

  PageController get pageController => _pageController;
}
