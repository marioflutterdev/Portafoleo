import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.knowledge});
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(
            width: 40,
          ),
          Text(knowledge),
        ],
      ),
    );
  }
}
