import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';

import 'data.dart';

class OffersScreen extends StatefulWidget {
  @override
  _OffersScreenState createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BuildCartRow(
                    showBackArrow: false,
                    title: 'Latest Offers',
                  ),
                  smallSizedBox,
                  Row(
                    children: [
                      Text('Find discounts, Offers special\nmeals and more!',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  smallSizedBox,
                  Row(
                    children: [
                      Container(
                          width: ScreenUtil().setWidth(180),
                          height: ScreenUtil().setHeight(40),
                          child: ReusableButton(
                            buttonColor: KMainColor,
                            buttonLabelColor: Colors.white,
                            buttonLabel: 'Check Offers',
                            buttonBorderColor: KMainColor,
                            isSmall: true,
                            onClick: (){},
                          )),
                    ],
                  )
                ],
              ),
            ),
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
    ),);
  }
}
