import 'package:flutter/material.dart';

import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFdfe5ff),
      body: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 45, right: 45, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: SizedBox(
                height: 130,
                child: Image.asset(
                  'assets/images/Logo.png',
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 230,
                child: Image.asset(
                  'assets/images/LoginIMG.png',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              'ایمیل',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Regular',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.end,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'ionfo@example.com',
                hintStyle: TextStyle(
                  color: Colors.black12,
                  fontSize: 12,
                ),
                filled: true, 
                fillColor: Colors.white,
                hintTextDirection: TextDirection.ltr,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Text(
              'رمز عبور',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Regular',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.end,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'رمز عبور دلخواه حداقل 5 کارکتر',
                hintStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.black12,
                ),
                filled: true, 
                fillColor: Colors.white,
                hintTextDirection: TextDirection.ltr,
              ),
            ),
            const SizedBox(height: 50,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 126,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'ثبت نام',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'heavy'),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'قبلا ثبت نام کرده ام',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                      fontFamily: 'Regular'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
