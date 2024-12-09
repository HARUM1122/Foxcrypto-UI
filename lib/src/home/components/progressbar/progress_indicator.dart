import 'package:flutter/material.dart';

class ProgressIndicator extends StatelessWidget {
  final bool active;
  const ProgressIndicator({required this.active, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: active ? 20 : 12,
      height: 4,
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: active
        ? const Color(0xFFF5C249)
        : const Color(0XFF494D58),
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}