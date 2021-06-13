import 'package:flutter/cupertino.dart';
import 'package:meal_monkey/screens/more_screen/payment_screen/reusable_widget.dart';

import '../../../constants.dart';

class OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Beef Burger x1',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '\$16',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 8),
            buildLine(context),
            smallSizedBox,
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Classic Burger x1',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '\$17',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 8),
            buildLine(context),
            smallSizedBox,
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cheese Chicken Burger x1',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '\$15',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 8),
            buildLine(context),
            smallSizedBox,
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chicken Legs Basket x1',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '\$15',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 8),
            buildLine(context),
            smallSizedBox,
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'French Fries Large x1',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '\$6',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 8),
            buildLine(context),
            smallSizedBox,
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Beef Burger x1',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '\$16',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
