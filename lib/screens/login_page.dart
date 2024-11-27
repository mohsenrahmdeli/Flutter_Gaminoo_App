import 'package:flutter/material.dart';
import '../compnent/components.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFdfe5ff),
      body: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            const SizedBox(height: 30),
            CustomTextField(
              labelText: 'ایمیل',
              hintText: 'info@example.com',
              controller: emailController,
              inputType: TextInputType.emailAddress,
              textDirection: TextDirection.ltr,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              labelText: 'رمز عبور',
              hintText: 'رمز عبور دلخواه حداقل 5 کاراکتر',
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 50),
            Center(
              child: CustomButton(
                text: 'ورود',
                onPressed: () {
                  print('ایمیل: ${emailController.text}');
                  print('رمز عبور: ${passwordController.text}');
                },
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                child: const Text(
                  "ایجاد حساب کاربری",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    fontFamily: 'Regular',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
