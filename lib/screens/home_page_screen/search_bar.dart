import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class SearchWidget extends StatefulWidget {
  final String hint;

  const SearchWidget({this.hint});
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}
class _SearchWidgetState extends State<SearchWidget> {

  final controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    String myHint = widget.hint;
    return Container(
      height: ScreenUtil().setHeight(42),
      width: ScreenUtil().setWidth(MediaQuery.of(context).size.width-65),
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: KInputTextFieldColor,
      ),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(50.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            hintStyle: new TextStyle(color: KTextColor),
            hintText:myHint,
            icon: Icon(Icons.search,color: KPrimaryFontColor,),
            fillColor: KInputTextFieldColor),
      ),
    );
  }
}