import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/more_screen/my_orders_screen/reusable_widget.dart';
import 'package:meal_monkey/screens/more_screen/payment_screen/reusable_widget.dart';

class MyOrdersScreen extends StatelessWidget {
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
                  BuildCartRow(
                    showBackArrow: true,
                    title: 'My Order',
                    showCart: false,
                  ),
                  midSizedBox,
                  Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(100),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/promotions.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'King Burgers',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/star.svg',
                                color: KMainColor,
                              ),
                              Text(
                                ' 4.9',
                                style: TextStyle(color: KMainColor),
                              ),
                              Text(
                                '    (124 Ratings)',
                                style: TextStyle(color: KPlaceholderColor),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(children: [
                            Row(
                              children: [
                                Text('Burger  '),
                                BuildDot(color: KMainColor),
                                Text(' Western Food'),
                              ],
                            )
                          ]),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/location.svg'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'No 03, 4th Lane, Newyork',
                                    style: TextStyle(color: KPlaceholderColor),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(300),
              color: KInputTextFieldColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: OrderList(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Instructions',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            child: SvgPicture.asset(
                              'assets/images/plus.svg',
                              color: KMainColor,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ClickableText(
                            text: '',
                            clickableText: 'Add Notes',
                            onClick: () {},
                            color: KMainColor,
                          ),
                        ],
                      )
                    ],
                  ),
                  smallSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$85',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: KMainColor),
                      ),
                    ],
                  ),
                  smallSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Cost',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$2',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: KMainColor),
                      ),
                    ],
                  ),
                  smallSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$87',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: KMainColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: ReusableButton(
                buttonColor: KMainColor,
                buttonLabelColor: Colors.white,
                buttonBorderColor: KMainColor,
                buttonLabel: 'Check Out',
                onClick: () {
                  Navigator.pushNamed(context, '/check_out');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
