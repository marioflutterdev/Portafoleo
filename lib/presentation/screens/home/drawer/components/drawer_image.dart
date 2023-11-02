import 'package:flutter/material.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFffffff),
              Color(0xFF096e79),
              Color(0XFF00f7ff),
            ],
            stops: [0, 35, 100],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
            BoxShadow(
              color: Color(0XFF00f7ff),
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Transform.rotate(
          angle: 0.1,
          child: Image.asset(
            'assets/img/profile.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
