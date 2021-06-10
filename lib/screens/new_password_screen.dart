import 'package:flutter/material.dart';

import '../constants.dart';
import '../reusable_widget.dart';

class NewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              midSizedBox,
              Center(
                child: Text(
                  'New Password',
                  style: TextStyle(fontSize: KMainTextSize),
                ),
              ),
              midSizedBox,
              Center(
                child: Text(
                  'Please enter your email to receive a \n link to  create a new password via email',
                  style: TextStyle(fontSize: KTextSize),
                  textAlign: TextAlign.center,
                ),
              ),
              smallSizedBox,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32,),
                child: Column(
                  children: [
                    ReusableTextField(
                      hidePassword: true,
                      label: 'New Password',
                    ),
                    smallSizedBox,
                    ReusableTextField(
                      hidePassword: true,
                      label: 'Confirm Password',
                    ),
                    smallSizedBox,
                    ReusableButton(
                      buttonColor: KMainColor,
                      buttonLabelColor: Colors.white,
                      buttonBorderColor: KMainColor,
                      buttonLabel: 'Send',
                      onClick: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
