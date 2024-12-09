import 'package:flutter/material.dart';

import '../../../../shared/extensions/extensions.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
          child: Image.asset('assets/images/Composition_10 1.png')
        ),
        const SizedBox(height: 40),
        const Text(
          "Transaction",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 32,
            fontWeight: FontWeight.w600
          ),
        ),
        const Text(
          "Security",
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