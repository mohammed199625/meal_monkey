import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';
import '../../reusable_widget.dart';

RotationTransition buildRotatedSquareImage() {
  return RotationTransition(
    turns: new AlwaysStoppedAnimation(45 / 360),
    child: Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
      width: ScreenUtil().setWidth(70),
      height: ScreenUtil().setHeight(70),
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
  );
}

ClipPath buildTriangleImage() {
  return ClipPath(
    clipper: TriangleClipper(),
    child: Container(
      width: ScreenUtil().setWidth(85),
      height: ScreenUtil().setHeight(85),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              'assets/images/dessert.jpg',
            ),
            fit: BoxFit.cover),
      ),
    ),
  );
}

Container buildSquareImage() {
  return Container(
    margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
    width: ScreenUtil().setWidth(80),
    height: ScreenUtil().setHeight(80),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
      image: DecorationImage(
          image: AssetImage(
            'assets/images/beverages.jpg',
          ),
          fit: BoxFit.cover),
    ),
  );
}

Container buildCircularImage() {
  return Container(
    margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
    width: ScreenUtil().setWidth(80),
    height: ScreenUtil().setHeight(80),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      image: DecorationImage(
          image: AssetImage(
            'assets/images/food.jpg',
          ),
          fit: BoxFit.cover),
    ),
  );
}

Positioned buildForwardArrow() {
  return Positioned(
    top: ScreenUtil().setHeight(25),
    left: ScreenUtil().setHeight(300),
    child: ForwardArrowInShadedCircle(
      opacity: .1,
      circleColor: Colors.white,
      arrowColor: KMainColor,
    ),
  );
}

Container buildFoodRow({String title, String items}) {
  return Container(
    padding: EdgeInsets.only(left: ScreenUtil().setWidth(40)),
    child: Row(
      children: [
        MenuRow(
          title: title,
          items: items,
        ),
      ],
    ),
  );
}

Container buildBackGroundOrangeContainer() {
  return Container(
    width: ScreenUtil().setWidth(140),
    height: ScreenUtil().setHeight(550),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(
          ScreenUtil().setWidth(30),
        ),
        bottomRight: Radius.circular(
          ScreenUtil().setHeight(30),
        ),
      ),
      color: KMainColor,
    ),
  );
}
