import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/more_screen/payment_screen/reusable_widget.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            buildCartRowWithHeader(context),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(200),
              color: KInputTextFieldColor,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 64),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Cash/Card on delivery'),
                        SvgPicture.asset('assets/images/correct.svg'),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    buildLine(context),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                        child:Image.asset('assets/images/visa.png'),),
                        Text(
                          '**** **** ****  2187',
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(100),
                          height: ScreenUtil().setHeight(40),
                          child: ReusableButton(
                            isSmall: true,
                            buttonBorderColor: KMainColor,
                            buttonColor: KInputTextFieldColor,
                            buttonLabel: 'Delete Card',
                            buttonLabelColor: KMainColor,
                            onClick: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    buildLine(context),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        ClickableText(
                          text: '',
                          clickableText: 'Other Methods',
                          color: Colors.black,
                          onClick: () {},
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(32),
              child: ReusableButton(
                buttonLabelColor: Colors.white,
                buttonBorderColor: KMainColor,
                buttonLabel: 'Add Another Credit/Debit Card',
                buttonColor: KMainColor,
                icon: 'assets/images/plus.svg',
                onClick: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => buildSheet(context),
                  enableDrag: false,
                  isScrollControlled: true,
                  isDismissible: false,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSheet(BuildContext context) => AddCreditCard();

}

