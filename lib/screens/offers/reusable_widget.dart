import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../reusable_widget.dart';

class OfferItemRow extends StatelessWidget {
  final Function onClick;
  final String imgPath;
  final String label;
  const OfferItemRow({this.imgPath, this.label, this.onClick,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(200),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imgPath),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 32),
              child: Column(

                children: [
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        label,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
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
                      Row(
                        children: [
                          Text('Café  ',style: TextStyle(color: KPlaceholderColor),),
                          BuildDot(color: KMainColor),
                          Text(' Western Food',style: TextStyle(color: KPlaceholderColor),),
                        ],
                      ),
                    ],
                  ),
                  smallSizedBox,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
