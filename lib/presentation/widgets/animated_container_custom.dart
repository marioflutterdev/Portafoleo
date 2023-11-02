import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../config/responsive/app_responsive.dart';
import '../../config/theme/app_theme.dart';
import '../provider/providers.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget(
      {Key? key, this.height = 300, this.width = 250, required this.img})
      : super(key: key);
  final double? width;
  final double? height;
  final String img;
  @override
  AnimatedContainerWidgetState createState() => AnimatedContainerWidgetState();
}

class AnimatedContainerWidgetState extends State<AnimatedContainerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>().themeData;
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: themeProvider == dartMode
                  ? const LinearGradient(colors: [
                      Color(0xFFffffff),
                      Color(0xFF096e79),
                      Color(0XFF00f7ff),
                    ], stops: [
                      0,
                      35,
                      100
                    ])
                  : const LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.grey,
                      ],
                    ),
              boxShadow: [
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                themeProvider == dartMode
                    ? const BoxShadow(
                        color: Color(0XFF00f7ff),
                        offset: Offset(2, 0),
                        blurRadius: 20,
                      )
                    : const BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 0),
                        blurRadius: 20,
                      ),
              ],
            ),
            child: Image.asset(
              widget.img,
              height: AppResponsive.isLargeMobile(context)
                  ? MediaQuery.sizeOf(context).width * 0.2
                  : AppResponsive.isTablet(context)
                      ? MediaQuery.sizeOf(context).width * 0.14
                      : 200,
              width: AppResponsive.isLargeMobile(context)
                  ? MediaQuery.sizeOf(context).width * 0.2
                  : AppResponsive.isTablet(context)
                      ? MediaQuery.sizeOf(context).width * 0.14
                      : 200,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
