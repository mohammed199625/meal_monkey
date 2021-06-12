import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/more_screen/data.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            BuildCartRow(
              showBackArrow: false,
              title: 'More',
            ),
            smallSizedBox,
            Container(
              padding: EdgeInsets.only(top:ScreenUtil().setHeight(12),),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: moreRowItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return moreRowItems[index];
                  }),
            ),          ],
        ),
      ),
    ));
  }
}

class MoreRow extends StatelessWidget {
final String title;
final String icon;
final String route;
  const MoreRow({Key key, this.title, this.icon, this.route});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, route);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 32),

        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 27),
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(90),
              decoration: BoxDecoration(
                color: KMoreRowColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 32,
                  ),
                  Container(
                      padding: EdgeInsets.all(20.w),
                      decoration: BoxDecoration(
                        color: KMoreRowItemColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        icon,
                        color: KPrimaryFontColor,
                      ))),
                  SizedBox(width: 32),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18),
                  ),
                  if(title=='Notifications')
                    Container(
                      margin: EdgeInsets.only(left: 32),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Text('15',style: TextStyle(color: Colors.white),)),
                    ),
                ],
              ),
            ),
            Positioned(
              top: ScreenUtil().setHeight(20),
              left: ScreenUtil().setWidth(300),
              child: ForwardArrowInShadedCircle(
                opacity: 0,
                circleColor: KMoreRowColor,
                arrowColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
