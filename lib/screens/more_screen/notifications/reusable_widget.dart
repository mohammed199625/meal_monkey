import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../reusable_widget.dart';

class NotificationRow extends StatelessWidget {
  final String notification;
  final String time;

  const NotificationRow({this.notification, this.time});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          BuildDot(
            color: KMainColor,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textSubString(text: notification,index: 30),
                style: TextStyle(fontSize: 20),

              ),
              SizedBox(height: 12,),
              Text(
                time,
                style: TextStyle(color: KPlaceholderColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
