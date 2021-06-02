import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'constants.dart';

class LogoWithName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/MonkeyFace.svg',
          semanticsLabel: 'Monkey Meal',
        ),
        SizedBox(
          height: ScreenUtil().setHeight(20),
        ),
        Text(
          'Meal Monkey',
          style: TextStyle(
              fontSize: KMainTextSize,
              color: KMainColor,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(10),
        ),
        Text(
          'FOOD DELIVERY',
          style: TextStyle(
              fontSize: KTextSize,
              color: KSecondaryFontColor,
              letterSpacing: 3),
        ),
      ],
    );
  }
}

class ReusableButton extends StatelessWidget {
  final String icon;
  final Color buttonColor;
  final Color buttonBorderColor;
  final String buttonLabel;
  final Color buttonLabelColor;
  final Function onClick;
  const ReusableButton(
      {this.buttonColor,
      this.buttonLabel,
      this.onClick,
      this.buttonLabelColor,
      this.buttonBorderColor,
      this.icon});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: ScreenUtil().setWidth(300),
      height: ScreenUtil().setHeight(50),
      child: InkWell(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(icon!=null)
              SvgPicture.asset(icon),
              Text(
                buttonLabel,
                style: TextStyle(color: buttonLabelColor, fontSize: KButtonLabelSize),
              ),
            ],
          ),
          decoration:BoxDecoration(
            color: buttonColor,
              border: Border.all(color: buttonBorderColor),
              borderRadius: BorderRadius.circular(50)
          ) ,
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),

        ),
        onTap: onClick,
      ),
    );
  }
}

class ReusableTextField extends StatelessWidget {
  final String label;

  const ReusableTextField({@required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ScreenUtil().setHeight(50),
      child: TextField(
        decoration: new InputDecoration(
            border: new OutlineInputBorder(
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
            helperStyle: TextStyle(
              fontSize: 20
            ),
            hintText: '      $label',
            fillColor: KInputTextFieldColor),
      ),
    );
  }
}

class ClickableText extends StatelessWidget {
  final String text;
  final String clickableText;
  final Color color;
  final Function onClick;
  const ClickableText({this.text, this.clickableText,this.onClick, this.color});
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(text: text,style: TextStyle(
              color: Colors.black
          )),
          TextSpan(
              text: clickableText,
              style: TextStyle(color:color),
              recognizer: TapGestureRecognizer()
                ..onTap = onClick),
        ],
      ),
    );
  }
}

class BuildDot extends StatelessWidget {
  final Color color;
  const BuildDot({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: ScreenUtil().setHeight(9),
      width: ScreenUtil().setHeight(9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color:color),
    );
  }
}

class BuildCartRow extends StatelessWidget {
  final bool showBackArrow;
  final String title;
  const BuildCartRow({this.title,@required this.showBackArrow});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(showBackArrow==true)
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              'assets/images/back_arrow.svg',
              semanticsLabel: 'Back Arrow',
              color: Colors.black,
            ),
          ),
        if(title != null)
          Text(
            title,
            style: TextStyle(fontSize: 22),
          ),
        SvgPicture.asset(
          'assets/images/shopping_cart.svg',
          semanticsLabel: 'Shopping Cart',
          color: KPrimaryFontColor,
        ),
      ],
    );
  }
}

class ListViewItem extends StatelessWidget {
  final String imgPATH;
  final String label;
  final Function onClick;
  final bool rateRow;
  const ListViewItem(
      {this.imgPATH, this.label, this.onClick, @required this.rateRow});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onClick,
          child: Container(
            height: ScreenUtil().setHeight(150),
            width: rateRow ? 1.sw : .28.sw,
            padding: EdgeInsets.only(),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(rateRow ? 0 : 15),
            ),
            child: Image.asset(
              imgPATH,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(10),
        ),
        Row(
          children: [
            Container(
              padding: rateRow ? EdgeInsets.only(left: 32) : EdgeInsets.all(0),
              child: Text(
                label,
                style: TextStyle(fontSize: KTextSize.sp),
              ),
            ),
          ],
        ),
        if (rateRow == true)
          Container(padding: EdgeInsets.only(left: 32), child: RateRow())
      ],
    );
  }
}

class RateRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: ScreenUtil().setWidth(12),
          height: ScreenUtil().setHeight(12),
          child: SvgPicture.asset(
            'assets/images/star.svg',
          ),
        ),
        Text(
          ' 4.9',
          style: TextStyle(color: KMainColor),
        ),
        Text(
          ' (124 ratings) Café  ',
          style: TextStyle(color: KPlaceholderColor),
        ),
        BuildDot(color: KMainColor),
        Text(
          '  Western Food',
          style: TextStyle(color: KPlaceholderColor),
        ),
      ],
    );
  }
}

class MostPopularList extends StatelessWidget {

  final String imgPATH;
  final String label;
  final Function onClick;

  const MostPopularList({this.imgPATH, this.label, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 32,bottom: 10),
            child: Row(
              children: [
                Container(
                  width: ScreenUtil().setWidth(300),
                  height: ScreenUtil().setHeight(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imgPATH),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(label,style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 32),
              child: RateRow()),

        ],
      ),
    );
  }
}



