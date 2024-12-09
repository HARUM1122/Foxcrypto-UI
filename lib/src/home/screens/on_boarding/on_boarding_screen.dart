import 'package:flutter/material.dart';

import 'pages/pages.dart';

import '../../components/progressbar/progressbar.dart';

import '../../../shared/extensions/extensions.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;

  void _incrementPage() {
    if (_currentPage == 2) {
      Navigator.pushReplacementNamed(context, '/login-and-signup-screen');
      return; 
    }
    setState(() {
      _currentPage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF16171D),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            switch (_currentPage) {
              0 => const PageOne(),
              1 => const PageTwo(),
              2 => const PageThree(),
              _=> const SizedBox()
            },
            const Spacer(),
            Row(
              children: [
                Progressbar(
                  currentPage: _currentPage,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: _incrementPage,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF5C249)
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: context.padding.bottom + 20),
            )
          ],
        ),
      ),
    );
  }
}