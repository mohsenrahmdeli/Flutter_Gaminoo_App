import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SinglePage extends StatelessWidget {
  final String imagePath;

  SinglePage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0XFFb9d1d7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/solar_logout-2-outline.png',
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'خروج',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Regular',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 25,
                left: 45,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 80,
                      height: 30,
                      child: Center(
                        child: Text(
                          'دسته بازی',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Regular'),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'دسته بازی مخصوص XBOX',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'heavy'),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '۵۰۰,۰۰۰ تومان',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontFamily: 'heavy'),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        
                      ],
                    )
                  ),
                ),
                Positioned(
                  top: -100,
                  left: 0,
                  right: -300,
                  child: Center(
                    child: Image.asset(
                      imagePath,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text('افزودن به سبد خرید'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
