import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';
import '../../reusable_widget.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            midSizedBox,
            Center(
              child: Text(
                'We have sent an OTP to\nyour Mobile',
                style: TextStyle(fontSize: KMainTextSize),
                textAlign: TextAlign.center,
              ),
            ),
            midSizedBox,
            Center(
              child: Text(
                'Please check your mobile number 071*****12\ncontinue to reset your password',
                style: TextStyle(fontSize: KTextSize),
                textAlign: TextAlign.center,
              ),
            ),
            smallSizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOTPInputTextField(),
                _buildOTPInputTextField(),
                _buildOTPInputTextField(),
                _buildOTPInputTextField(),
              ],
            ),
            smallSizedBox,
            ReusableButton(
              buttonColor: KMainColor,
              buttonLabelColor: Colors.white,
              buttonBorderColor: KMainColor,
              buttonLabel: 'Next',
              onClick: () {
                Navigator.pushNamed(context, '/new_password');
              },
            ),
            midSizedBox,
            ClickableText(
              text: 'Didn\'t Receive? ',
              clickableText: 'Click Here',
              color: KMainColor,
              onClick: () {
                Navigator.pushNamed(context, '/reset_password');
              },
            )
          ]),
        ),
      ),
    );
  }

  Container _buildOTPInputTextField() {
    return Container(
      width: ScreenUtil().setWidth(65),
      height: ScreenUtil().setHeight(65),
      child: TextField(
        decoration: new InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            alignLabelWithHint: true,
            hintText: '    *',
            hintStyle: new TextStyle(color: KTextColor),
            fillColor: KInputTextFieldColor),
      ),
    );
  }
}
