import 'package:flutter/material.dart';
import '../compnent/components.dart';
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
                text: 'ثبت نام',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  "قبلا ثبت نام کرده ام",
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
