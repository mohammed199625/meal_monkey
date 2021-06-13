import 'package:flutter/material.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/home_page_screen/search_bar.dart';

import '../../constants.dart';
import 'data.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    BuildCartRow(showBackArrow: true,title: 'Food',),
                  ],
                ),
              ),
              _buildSearch(),
              smallSizedBox,
              Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: menuItemRow.length,
                    itemBuilder: (BuildContext context, int index) {
                      return menuItemRow[index];
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildSearch() => SearchWidget(hint: 'Search Food');


}
