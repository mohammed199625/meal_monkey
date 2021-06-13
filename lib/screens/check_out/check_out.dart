import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/check_out/reusable_widget.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            BuildCartRow(
              showBackArrow: true,
              title: 'Checkout',
              showCart: false,
            ),
            midSizedBox,
            buildTitleRow(),
            smallSizedBox,
            buildAddressRow(context),
            smallSizedBox,
            buildPaymentMethodRow(context),
            smallSizedBox,
            Container(
              padding: EdgeInsets.only(left: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash on delivery',
                        style: TextStyle(fontSize: 18),
                      ),
                      Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        focusColor: KMainColor,
                        hoverColor: KMainColor,
                        activeColor: KMainColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset('assets/images/visa.png'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '**** **** ****  2187',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        hoverColor: KMainColor,
                        focusColor: KMainColor,
                        activeColor: KMainColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset('assets/images/pyoner.png'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'johndoe@email.com',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Radio(
                        value: 3,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        hoverColor: KMainColor,
                        focusColor: KMainColor,
                        activeColor: KMainColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            midSizedBox,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '\$85',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                smallSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Cost',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '\$2',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                smallSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '-\$4',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                smallSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '\$83',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                midSizedBox,
                ReusableButton(
                  buttonColor: KMainColor,
                  buttonLabelColor: Colors.white,
                  buttonBorderColor: KMainColor,
                  buttonLabel: 'Send Order',
                  onClick: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => buildSheet(context),
                    enableDrag: false,
                    isScrollControlled: true,
                    isDismissible: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Widget buildSheet(BuildContext context) => ThanksBottomSheet();
}

class ThanksBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      padding: EdgeInsets.only(bottom: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(top: 15),
                  child: SvgPicture.asset('assets/images/dismiss.svg'),
                ),
              )
            ],
          ),
          Container(
            child: Image.asset('assets/images/thanks.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Thank You!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            'for your order',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          smallSizedBox,
          Text(
            'Your Order is now being processed. We will let you\n know once the order is picked from the outlet. Check\n the status of your Order',
            textAlign: TextAlign.center,
          ),
          smallSizedBox,
          ReusableButton(
              buttonLabelColor: Colors.white,
              buttonBorderColor: KMainColor,
              buttonLabel: 'Track My Order',
              buttonColor: KMainColor,
              onClick: () {}),
          smallSizedBox,
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/home_page');
            },
            child: Text(
              'Back To Home',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
