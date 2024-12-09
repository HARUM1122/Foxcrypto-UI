import 'package:flutter/material.dart';

import '../../shared/components/svg_icon.dart';

class BottomNavigatorButton extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool selected;
  final Function() onPressed;
  const BottomNavigatorButton({
    required this.title,
    required this.iconPath,
    required this.selected,
    required this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          SvgIcon(
            path: iconPath,
            color: selected
            ? const Color(0xFFF5C249)
            : const Color(0xFF787A8D),
            size: 20,
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: selected
              ? const Color(0xFFF5C249)
              : const Color(0xFF787A8D),
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}