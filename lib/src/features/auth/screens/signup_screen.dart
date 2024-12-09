import 'package:flutter/material.dart';

import '../../../shared/components/custom_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _conditionsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF16171D),
      appBar: AppBar(
        title: const Text(
          'Sign up',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w600,
            fontSize: 18
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xFFA7AEBF),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text(
              "Email Address",
              style: TextStyle(
                color: Color(0xFFA7AEBF),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                cursorColor: const Color(0xFFF5C249),
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none
                  ),
                  contentPadding: const EdgeInsets.all(16),
                  hintText: "Enter your email address",
                  hintStyle: const TextStyle(
                    color: Color(0XFF494D58),
                    fontSize: 14
                  ),
                  filled: true,
                  fillColor: const Color(0XFF21242D),
                )
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Password",
              style: TextStyle(
                color: Color(0xFFA7AEBF),
                fontSize: 14
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                cursorColor: const Color(0xFFF5C249),
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none
                  ),
                  contentPadding: const EdgeInsets.all(16),
                  hintText: "Enter your password",
                  hintStyle: const TextStyle(
                    color: Color(0XFF494D58),
                    fontSize: 14
                  ),
                  filled: true,
                  fillColor: const Color(0XFF21242D),
                )
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "At least 8 characters with uppercase letters and numbers",
              style: TextStyle(
                color: Color(0xFFA7AEBF),
                fontSize: 12
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.black,
                  fillColor: WidgetStatePropertyAll(
                    _conditionsAccepted
                    ? const Color(0xFFF5C249)
                    : const Color(0xFF787A8D),
                  ),
                  splashRadius: 0,
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)
                  ),
                  value: _conditionsAccepted,
                  onChanged: (value) {
                    setState(() => _conditionsAccepted = value!);
                  },
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Accept ',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                        )
                      ),
                      TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                          color: Color(0xFFF5C249),
                          fontSize: 14,
                        )
                      ),
                      TextSpan(
                        text: ' & ',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                        )
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: Color(0xFFF5C249),
                          fontSize: 14,
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            CustomButton(
              width: double.infinity,
              height: 50,
              backgroundColor: const Color(0xFFF5C249),
              applyClickAnimation: true,
              onPressed: () {
                Navigator.popUntil(context, (_) => false);
                Navigator.pushNamed(context, '/home-screen');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)
              ),
              child: const Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}