import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

class ArchivePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'imagePath': 'assets/images/Controller.png',
    },
    {
      'imagePath': 'assets/images/TV.png',
    },
    {
      'imagePath': 'assets/images/Mobile.png',
    },
    {
      'imagePath': 'assets/images/SmartWatch.png',
    },
    {
      'imagePath': 'assets/images/SmartWatch.png',
    },
    {
      'imagePath': 'assets/images/Controller.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:25),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      SystemNavigator.pop();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/Logo.png',
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'فروشگاه',
                          style: TextStyle(
                            fontFamily: 'heavy',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                height: 50,
              ),
              Wrap(
                spacing: 20,
                runSpacing: 50,
                children: items.map((item) => buildItemCard(item)).toList(),
              ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemCard(Map<String, String> item) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          child: SizedBox(
            height: 150,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'دسته بازی XBOX',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Regular',
                    ),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 15),
                  Text(
                    '۵۰۰,۰۰۰',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontFamily: 'heavy',
                    ),
                  ),
                  Text(
                    'تومان',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontFamily: 'heavy',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -50,
          left: 25,
          right: 25,
          child: Center(
            child: Image.asset(
              item['imagePath']!,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
