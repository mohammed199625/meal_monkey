import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                _buildClipPath(),
                Positioned(bottom: -100,width:MediaQuery.of(context).size.width,child: LogoWithName(),),
              ],
            ),
            largeSizedBox,
            midSizedBox,
            Text(
              'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
              style: TextStyle(color: KSecondaryFontColor),
              textAlign: TextAlign.center,
            ),
            smallSizedBox,
            Container(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  ReusableButton(
                    buttonColor: KMainColor,
                    buttonLabelColor: Colors.white,
                    buttonBorderColor: KMainColor,
                    buttonLabel: 'Login',
                    onClick: () {
                      Navigator.pushNamed(context,'/login');
                    },
                  ),
                  smallSizedBox,
                  ReusableButton(
                      buttonColor: Colors.white,
                      buttonLabelColor: KMainColor,
                      buttonBorderColor: KMainColor,
                      buttonLabel: 'Create an Account',
                      onClick: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ClipPath _buildClipPath() {
    return ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                height: ScreenUtil().setHeight(420),
                decoration: BoxDecoration(
                    color: KMainColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
            );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width =ScreenUtil().setWidth(size.width);
    double height =ScreenUtil().setWidth(size.height);
    double rd = width * .25;
    double rounded = 20;
    var path = Path();
    path.lineTo(width, 0);
    path.lineTo(width,height);
    path.lineTo(width - rd + rounded,height);
    path.quadraticBezierTo(
        width - rd,height,width - rd,height - rounded);
    path.arcToPoint(
      Offset(rd,height - rounded),
      radius: Radius.circular(rd),
      clockwise: false,
    );
    path.quadraticBezierTo(rd,height, rd - rounded,height);
    path.lineTo(0,height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
