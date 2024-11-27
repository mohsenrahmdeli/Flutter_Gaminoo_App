import 'package:flutter/material.dart';

class ArchivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
          padding: const EdgeInsets.fromLTRB(35, 20, 35, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/Logo.png',
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('فروشگاه', style: TextStyle(fontFamily: 'heavy')),
                    ],
                    alignment: AlignmentDirectional.bottomCenter),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                              child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'دسته بازی XBOX',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Regular'),
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '۵۰۰,۰0۰',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
                                      ),
                                      Text(
                                        'تومان',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
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
                                  'assets/images/Controller.png',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 75,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                              child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'دسته بازی XBOX',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Regular'),
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '۵۰۰,۰0۰',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
                                      ),
                                      Text(
                                        'تومان',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
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
                                  'assets/images/Mobile.png',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 75,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                              child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'دسته بازی XBOX',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Regular'),
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '۵۰۰,۰0۰',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
                                      ),
                                      Text(
                                        'تومان',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
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
                                  'assets/images/SmartWatch.png',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                              child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'دسته بازی XBOX',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Regular'),
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '۵۰۰,۰0۰',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
                                      ),
                                      Text(
                                        'تومان',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
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
                                  'assets/images/TV.png',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 75,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                              child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'دسته بازی XBOX',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Regular'),
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '۵۰۰,۰0۰',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
                                      ),
                                      Text(
                                        'تومان',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
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
                                  'assets/images/SmartWatch.png',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 75,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                              child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'دسته بازی XBOX',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Regular'),
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '۵۰۰,۰0۰',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
                                      ),
                                      Text(
                                        'تومان',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontFamily: 'heavy'),
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
                                  'assets/images/Controller.png',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}


class Item {
  final String imagePath;

  Item({
    required this.imagePath,
  });
}

final List<Item> items = [
  Item(
    imagePath: 'assets/images/Controller.png',
  ),
  Item(
    imagePath: 'assets/images/TV.png',
  ),
  Item(
    imagePath: 'assets/images/Controller.png',
  ),
  Item(
    imagePath: 'assets/images/Controller.png',
  ),
  Item(
    imagePath: 'assets/images/Controller.png',
  ),
  Item(
    imagePath: 'assets/images/Controller.png',
  ),
];
