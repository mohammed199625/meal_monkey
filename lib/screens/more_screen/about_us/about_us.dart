import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                BuildCartRow(
                  showBackArrow: true,
                  title: 'About Us',
                ),
                largeSizedBox,
                Row(
                  children: [
                    BuildDot(color: KMainColor),
                    RichText(
                      text: TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco laboris nisi ut\n aliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint\n occaecat cupidatat non proident, sunt in culpa qui\n officia deserunt mollit anim id est laborum.',style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                smallSizedBox,
                Row(
                  children: [
                    BuildDot(color: KMainColor),
                    RichText(
                      text: TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco laboris nisi ut\n aliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint\n occaecat cupidatat non proident, sunt in culpa qui\n officia deserunt mollit anim id est laborum.',style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                smallSizedBox,
                Row(
                  children: [
                    BuildDot(color: KMainColor),
                    RichText(
                      text: TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco laboris nisi ut\n aliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint\n occaecat cupidatat non proident, sunt in culpa qui\n officia deserunt mollit anim id est laborum.',style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                smallSizedBox,
                Row(
                  children: [
                    BuildDot(color: KMainColor),
                    RichText(
                      text: TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua. Ut enim ad minim veniam,\n quis nostrud exercitation ullamco laboris nisi ut\n aliquip ex ea commodo consequat. Duis aute irure\n dolor in reprehenderit in voluptate velit esse cillum\n dolore eu fugiat nulla pariatur. Excepteur sint\n occaecat cupidatat non proident, sunt in culpa qui\n officia deserunt mollit anim id est laborum.',style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                smallSizedBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
