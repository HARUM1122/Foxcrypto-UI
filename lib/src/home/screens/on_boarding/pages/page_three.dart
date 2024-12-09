import 'package:flutter/material.dart';

import '../../../../shared/extensions/extensions.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: context.screenSize.height * 0.12,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset('assets/images/01 1.png')
        ),
        const SizedBox(height: 40),
        const Text(
          "Fast And Reliable",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 32,
            fontWeight: FontWeight.w600
          ),
        ),
        const Text(
          "Market Updated",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 32,
            fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}