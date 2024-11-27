import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SinglePage extends StatefulWidget {
  final String imagePath;

  SinglePage({required this.imagePath});

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  bool isDescriptionExpanded = false;
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                              color: Colors.black54,
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
                              color: Colors.white,
                              fontFamily: 'Regular',
                              fontSize: 14,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                        child: Row(
                          children: [
                            Text(
                              'تومان',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                  fontFamily: 'heavy'),
                              textDirection: TextDirection.rtl,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '۵۰۰,۰۰۰',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black54,
                                  fontFamily: 'heavy'),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        )),
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
                            Image.asset(
                              'assets/images/bxs_up-arrow-alt.png',
                              height: 20,
                              width: 20,
                            ),
                            Text('ااا'),
                            Image.asset(
                              'assets/images/bxs_up-arrow-alt.png',
                              height: 20,
                              width: 20,
                            ),
                            Image.asset(
                              'assets/images/bxs_up-arrow-alt.png',
                              height: 20,
                              width: 20,
                            ),
                            Image.asset(
                              'assets/images/bxs_up-arrow-alt.png',
                              height: 20,
                              width: 20,
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    top: -100,
                    left: 0,
                    right: -300,
                    child: Center(
                      child: Image.asset(
                        widget.imagePath,
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'توضیحات',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'heavy'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text.rich(
                      textDirection: TextDirection.rtl,
                      TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(fontFamily: 'Regular'),
                            text: isDescriptionExpanded
                                ? 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.'
                                : 'لورم ایپسوم متن ساختگی با تولید سادگی...',
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    isDescriptionExpanded =
                                        !isDescriptionExpanded;
                                  },
                                );
                              },
                              child: Text(
                                isDescriptionExpanded ? 'بستن ' : ' بیشتر +',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Regular',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: List.generate(4, (index) {
                        final colors = [
                          Colors.black,
                          Colors.yellow,
                          Colors.blue,
                          Colors.white
                        ];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedColorIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: colors[index],
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: selectedColorIndex == index
                                    ? Colors.blue
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      'انتخاب رنگ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'heavy',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'افزودن به سبد خرید',
                  style: TextStyle(
                      fontFamily: 'heavy', color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 15,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
