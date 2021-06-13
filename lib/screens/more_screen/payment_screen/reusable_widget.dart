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
