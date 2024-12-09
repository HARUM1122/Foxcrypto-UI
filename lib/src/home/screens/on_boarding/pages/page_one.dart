import 'package:flutter/material.dart';

import '../../../../shared/extensions/extensions.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

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
          child: Image.asset('assets/images/07 1.png')
        ),
        const SizedBox(height: 40),
        const Text(
          "Welcome To",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 32,
            fontWeight: FontWeight.w600
          ),
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Fox',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 32,
                  fontWeight: FontWeight.w600
                )
              ),
              TextSpan(
                text: 'crypto',
                style: TextStyle(
                  color: Color(0xFFF5C249),
                  fontSize: 32,
                  fontWeight: FontWeight.w600
                )
              ),
            ],
          ),
        )
      ],
    );
  }
}