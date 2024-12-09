import 'package:flutter/material.dart';

import '../../../shared/extensions/extensions.dart';
import '../../../shared/components/custom_button.dart';


class LoginAndSignupScreen extends StatelessWidget {
  const LoginAndSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF16171D),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.screenSize.height * 0.12,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/03 2.png')
            ),
            const SizedBox(height: 40),
            const Text(
              "Fast And Flexible",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 32,
                fontWeight: FontWeight.w600
              ),
            ),
            const Text(
              "Trading",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 32,
                fontWeight: FontWeight.w600
              ),
            ),
            const Spacer(),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      height: 50,
                      backgroundColor: Colors.transparent,
                      applyClickAnimation: true,
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup-screen'); 
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                        side: const BorderSide(
                          color: Color(0xFFF5C249),
                          width: 2
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Color(0xFFF5C249),
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      )
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomButton(
                      height: 50,
                      backgroundColor: const Color(0xFFF5C249),
                      applyClickAnimation: true,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login-screen'); 
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: const Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      )
                    ),
                  )
                ],
              ),
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