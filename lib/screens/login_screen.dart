import 'package:flutter/material.dart';
import 'package:meal_monkey/constants.dart';
import '../reusable_widget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: KMainTextSize),
                ),
              ),
              smallSizedBox,
              Center(
                child: Text(
                  'Add yor details to login',
                  style: TextStyle(fontSize: KTextSize),
                ),
              ),
              smallSizedBox,
              ReusableTextField(
                label: 'Your Email',
              ),
              smallSizedBox,
              ReusableTextField(
                hidePassword: true,
                label: 'Password',
              ),
              smallSizedBox,
              ReusableButton(
                buttonColor: KMainColor,
                buttonLabelColor: Colors.white,
                buttonBorderColor: KMainColor,
                buttonLabel: 'Login',
                onClick: () {
                  Navigator.pushNamed(context, '/on_boarding_screen');
                },
              ),
              smallSizedBox,
             ClickableText(text: '',clickableText: 'Forgot your password?',color: Colors.black,onClick: (){
               Navigator.pushNamed(context, '/reset_password');
             },),
             midSizedBox,
              Center(child: Text('or Login With'),),
              smallSizedBox,
              ReusableButton(
                icon: 'assets/images/facebook.svg',
                buttonColor: Colors.blue,
                buttonLabelColor: Colors.white,
                buttonBorderColor: Colors.blue,
                buttonLabel: 'Login with Facebook',
                onClick: () {},
              ),
              smallSizedBox,
              ReusableButton(
                icon: 'assets/images/google_plus.svg',
                buttonColor: Colors.red,
                buttonLabelColor: Colors.white,
                buttonBorderColor: Colors.red,
                buttonLabel: 'Login with Google',
                onClick: () {},
              ),
              midSizedBox,
            ClickableText(text: 'Don\'t have an account? ',clickableText: 'Sign Up',color: KMainColor,onClick: () {
              Navigator.pushNamed(context, '/sign_up');
            },),
            ],
          ),
        ),
      ),
    );
  }
}
