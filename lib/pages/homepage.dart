import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rog_website/model/category1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Define the list
  List<CategoryModel> categories = [];

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: app_bar(),
        endDrawer: end_drawer(),
        body: ListView(
          children: [
            ROG_Elite_bar(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 830,
                  color: Colors.blue,
                  child: ListView.separated(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: double.infinity,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      categories[index].pic_path))),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ));
  }

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
        padding: const EdgeInsets.only(left: 0.0),
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
              width: 50,
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
      titleTextStyle: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
