import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../../config/config.dart';
import '../../../provider/providers.dart';
import '../../../widgets/widgets.dart';
import 'drawer.dart';

class MenuLeft extends StatelessWidget {
  const MenuLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final movile = AppResponsive.isLargeMobile(context);
    final setIsHovered = context.watch<MenuDrawerProvider>();
    return OnHoverCustomWidget(
      builder: (isHovered) {
        !movile ? setIsHovered.isHover = isHovered : false;
        return const _ViewMenuLeft();
      },
    );
  }
}

class _ViewMenuLeft extends StatelessWidget {
  const _ViewMenuLeft();

  @override
  Widget build(BuildContext context) {
    final isHovered = context.watch<MenuDrawerProvider>().isHover;
    final movile = AppResponsive.isLargeMobile(context);
    final theme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.fromLTRB(movile ? 50 : 100, 50, 0, 20),
      padding: const EdgeInsets.all(10),
      width: isHovered ? 350 : 50,
      height: isHovered ? double.infinity : 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isHovered ? theme.background : theme.onPrimaryContainer,
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
          ),
        ],
      ),
      child: isHovered
          ? const CustomDrawer()
          : const Icon(
              Icons.menu_outlined,
              size: 30,
              color: Colors.black,
            ),
    );
  }
}
