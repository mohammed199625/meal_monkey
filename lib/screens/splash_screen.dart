import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/first_page_to_login.dart';
import '../reusable_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => FirstPage()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage('assets/images/bg.png'),),
          ),
          child: Center(
            child: Container(
              child: LogoWithName(),
            ),
          ),
        ),
      ),
    );
  }
}
