import 'package:flutter/material.dart';

import '../../../shared/components/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF16171D),
      appBar: AppBar(
        title: const Text(
          'Log in',
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
            const SizedBox(height: 10),
            const Text(
              "Forgot Password?",
              style: TextStyle(
                color: Color(0xFFF5C249),
                fontSize: 14
              ),
            ),
            const SizedBox(height: 20),
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
                  "Log in",
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