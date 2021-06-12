import 'package:flutter/material.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/screens/more_screen/notifications/reusable_widget.dart';
import '../../../reusable_widget.dart';
import 'data.dart';

class NotificationsScreen extends StatelessWidget {
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
                  title: 'Notifications',
                ),
                largeSizedBox,
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: notificationRowItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return notificationRowItems[index];
                  }),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

