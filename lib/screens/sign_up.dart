import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../reusable_widget.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: KMainTextSize),
              ),
            ),
            smallSizedBox,
            Center(
              child: Text(
                'Add yor details to sign up',
                style: TextStyle(fontSize: KTextSize),
              ),
            ),
            smallSizedBox,
            ReusableTextField(
              label: 'Name',
            ),
            smallSizedBox,
            ReusableTextField(
              label: 'Email',
            ),
            smallSizedBox,
            ReusableTextField(
              label: 'Mobile No',
            ),
            smallSizedBox,
            ReusableTextField(
              label: 'Address',
            ),
            smallSizedBox,
            ReusableTextField(
              label: 'Password',
            ),
            smallSizedBox,
            ReusableTextField(
              label: 'Confirm Password',
            ),
            smallSizedBox,
            ReusableButton(
              buttonColor: KMainColor,
              buttonLabelColor: Colors.white,
              buttonBorderColor: KMainColor,
              buttonLabel: 'Sign Up',
              onClick: () {},
            ),
            smallSizedBox,
            ClickableText(
              text: 'Already have an Account ? ',
              clickableText: 'Login',
              color: KMainColor,
              onClick: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ]),
        ),
      ),
    );
  }
}
