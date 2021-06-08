import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/Menu/widgets.dart';
import '../home_page/search_bar.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                BuildCartRow(showBackArrow: false, title: 'Menu'),
                smallSizedBox,
                Row(
                  children: [_buildSearch()],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  buildBackGroundOrnageContainer(),
                  Positioned(
                    top: 40,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  buildFoodRow('Food','120 items'),
                                  buildCircularImage(),
                                  buildForwaedArrow(),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  buildFoodRow('Beverages','220 items'),
                                  buildSquarImage(),
                                  buildForwaedArrow(),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  buildFoodRow('Desserts','155 items'),
                                  buildTriangleImage(),
                                  buildForwaedArrow(),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  buildFoodRow('Promotions','25 items'),
                                  buildRotatedSquareImage(),
                                  buildForwaedArrow(),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }

  Widget _buildSearch() => SearchWidget(
        text: 'query',
        hintText: 'Search Food',
        //onChanged:(){},
        //searchFood,
      );
}
