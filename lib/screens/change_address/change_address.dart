import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/home_page_screen/search_bar.dart';

class ChangeAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: BuildCartRow(
                  showBackArrow: true,
                  title: 'Change Address',
                  showCart: false,
                ),
              ),
              Container(
                  height: ScreenUtil().setHeight(600),
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/map.png',
                    fit: BoxFit.cover,
                  )),
              smallSizedBox,
              SearchWidget(),
              Container(
                padding: EdgeInsets.only(left: 32,top: 20,right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFEE5A30).withOpacity(.3),
                          ),
                          child: SvgPicture.asset('assets/images/star.svg'),
                        ),
                        SizedBox(width: 15,),
                        Text('Choose a saved place',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    InkWell(
                        onTap: (){},
                        child: SvgPicture.asset('assets/images/forward_arrow.svg',width: 20,height: 20,))
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearch() => SearchWidget(
        hint: 'Search Address',
      );
}
