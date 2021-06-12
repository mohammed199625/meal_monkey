import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../reusable_widget.dart';

Container buildCartRowWithHeader(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 32,right: 32,top: 32,bottom: 12),
    child: Column(
      children: [
        BuildCartRow(showBackArrow: true,title: 'Payment Details',),
        midSizedBox,
        Row(
          children: [
            Text('Customize your payment method',style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 12,),
        buildLine(context),
      ],
    ),
  );
}

Container buildLine(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: ScreenUtil().setHeight(1),
    color: KSecondaryFontColor,
  );
}

Column buildBottomSheetContent(BuildContext context) {
  final bool isActive=false;
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Text(
              'Add Credit/Debit Card',
              style: TextStyle(fontSize: 15),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: SvgPicture.asset('assets/images/dismiss.svg'),
            ),
          ),
        ],
      ),
      smallSizedBox,
      ReusableTextField(label: 'Card Number'),
      smallSizedBox,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Expire'),
          Container(
              width: ScreenUtil().setWidth(120),
              child: ReusableTextField(label: '  MM')),
          Container(
              width: ScreenUtil().setWidth(120),
              child: ReusableTextField(label: '  YY')),              ],
      ),
      smallSizedBox,
      ReusableTextField(label: 'Security Code',),
      smallSizedBox,
      ReusableTextField(label: 'First Name',),
      smallSizedBox,
      ReusableTextField(label: 'Last Name',),
      smallSizedBox,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text('You can remove this card at anytime'),
        Switch(value: isActive, onChanged: (value){
          value=value;
        },inactiveThumbColor: Color(0xFFD8D8D8),inactiveTrackColor: Color(0xFFD8D8D8),),
      ],

      ),
      smallSizedBox,
      ReusableButton(
          buttonLabelColor: Colors.white,
          buttonBorderColor: KMainColor,
          buttonLabel: 'Add Card',
          buttonColor: KMainColor,
          icon: 'assets/images/plus.svg',
          onClick: () {}
      ),
    ],
  );
}
