import 'package:flutter/material.dart';

import 'login_page.dart';
import 'signup_page.dart';

class WellComePage extends StatelessWidget {
  const WellComePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFdce2fb),
      body: WellcomeScreen(),
    );
  }
}

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            SizedBox(
              height: 400,
              child: Image.asset(
                'assets/images/MainIMG.png',
              ),
            ),
            SizedBox(
              height: 130,
              child: Image.asset(
                'assets/images/Logo.png',
              ),
            ),
            const Text(
              'فروشگاه گیمینو',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'heavy',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'فروشگاه تخصصی لوازم بازی های رایانه ای و',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontFamily: 'Regular',
              ),
            ),
            const Text(
              'کنسول بازی',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontFamily: 'Regular',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 120,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );},
              child: const Text(
                'ایجاد حساب کاربری',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'heavy',
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: const Text(
                "قبلاً ثبت نام کرده‌ام",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Regular',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
