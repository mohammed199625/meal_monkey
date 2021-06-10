import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../reusable_widget.dart';

class MenuItemRow extends StatelessWidget {
  final Function onClick;
  final String imgPath;
  final String label;
  final String cafeName;
  const MenuItemRow({this.imgPath, this.label, this.onClick, this.cafeName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: ScreenUtil().setHeight(200),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imgPath),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 32,
                  bottom: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                            '    $cafeName',
                            style: TextStyle(color: Colors.white),
                          ),
                          BuildDot(color: KMainColor),
                          Text(' Desserts',style: TextStyle(color:Colors.white),),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 4,),
          ],
        ),
      ),
    );
  }
}
