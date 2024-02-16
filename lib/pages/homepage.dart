// import 'dart:html';

import 'dart:js';

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:rog_website/model/category1.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  List<String> imageList = [
    "https://rog.asus.com/laptops-group/"
        "https://rog.asus.com/laptops-group/"
        "https://rog.asus.com/graphics-cards-group/"
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: app_bar(),
        endDrawer: end_drawer(),
        body: ListView(
          children: [
            ROG_Elite_bar(),
            hero_section(screenHeight, screenwidth, context),
            if (isMobile(context))
              Column(
                children: [
                  Container(
                    height: 470,
                    width: screenwidth,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Title(
                            color: Colors.black,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 60),
                              child: Text(
                                "EXPLORE OUR PRODUCTS",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        const SizedBox(height: 20),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            CarouselSlider(
                                items: items,
                                options: CarouselOptions(
                                  autoPlay: false,
                                  enableInfiniteScroll: false,
                                  enlargeCenterPage: true,
                                  height: 150,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
          ],
        ));
  }

  Column hero_section(
      double screenHeight, double screenwidth, BuildContext context) {
    return Column(
      children: [
        if (isMobile(context))
          SizedBox(
              height: screenHeight - 95,
              width: screenwidth,
              child: AnotherCarousel(
                images: const [
                  AssetImage("assets/pic1.png"),
                  AssetImage("assets/pic2.png"),
                  AssetImage("assets/pic3.png"),
                  AssetImage("assets/pic4.png"),
                  AssetImage("assets/pic5.png"),
                  AssetImage("assets/pic6.png"),
                ],
                dotSize: 5,
                indicatorBgPadding: 5.0,
                animationDuration: Duration(milliseconds: 800),
              ))
        else
          SizedBox(
              height: screenHeight - 95,
              width: screenwidth,
              child: AnotherCarousel(
                images: const [
                  AssetImage("assets/rog1.png"),
                  AssetImage("assets/rog2.png"),
                  AssetImage("assets/rog3.png"),
                  AssetImage("assets/rog4.png"),
                  AssetImage("assets/rog5.png"),
                  AssetImage("assets/rog6.png"),
                ],
                dotSize: 5,
                indicatorBgPadding: 5.0,
                animationDuration: Duration(milliseconds: 800),
              ))
      ],
    );
  }

  // Column _categoriesSection(BuildContext context) {
  SafeArea ROG_Elite_bar() {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.red,
            height: 25,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                  child: Text(
                "Login to ROG Elite Rewards program now!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700),
              )),
            ),
          ),
        ],
      ),
    );
  }

  Drawer end_drawer() {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('test1'),
            )
          ],
        ),
      ),
    );
  }

  AppBar app_bar() {
    return AppBar(
      toolbarHeight: 70.0,
      backgroundColor: Colors.black,
      title: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Container(
              height: 50,
              child: Image(
                image: AssetImage('assets/rog-1.png'),
              ),
            ),
            Container(
              width: 100.0,
              child: Text(
                "Republic of \nGamer",
              ),
            ),
          ],
        ),
      ),
      titleTextStyle: const TextStyle(
        color: Color(0xE30017),
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
