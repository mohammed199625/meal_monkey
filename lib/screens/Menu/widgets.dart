import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';
import '../../reusable_widget.dart';

RotationTransition buildRotatedSquareImage() {
  return RotationTransition(
    turns: new AlwaysStoppedAnimation(45 / 360),
    child: Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              'assets/images/food.jpg',
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
      width: 85,
      height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              'assets/images/food.jpg',
            ),
            fit: BoxFit.cover),
      ),
    ),
  );
}

Container buildSquarImage() {
  return Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
      image: DecorationImage(
          image: AssetImage(
            'assets/images/food.jpg',
          ),
          fit: BoxFit.cover),
    ),
  );
}

Positioned buildForwaedArrow() {
  return Positioned(
    top: 20,
    left: 300,
    child: ForwardArrowInShadedCircle(),
  );
}

Positioned buildCircularImage() {
  return Positioned(
    child: Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              'assets/images/food.jpg',
            ),
            fit: BoxFit.cover),
      ),
    ),
  );
}

Positioned buildFoodRow(String title, String items) {
  return Positioned(
    top: -8,
    left: 40,
    child: MenuRow(
      title: title,
      items: items,
    ),
  );
}

Positioned buildBackGroundOrnageContainer() {
  return Positioned(
    child: Container(
      width: ScreenUtil().setWidth(140),
      height: ScreenUtil().setHeight(550),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
        color: KMainColor,
      ),
    ),
  );
}
