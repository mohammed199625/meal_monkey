import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants.dart';
import 'screens/Menu/menu.dart';
import 'package:meal_monkey/screens/more_screen.dart';
import 'package:meal_monkey/screens/offers_screen.dart';
import 'package:meal_monkey/screens/profile_screen.dart';
import 'package:meal_monkey/screens/splash_screen.dart';
import 'screens/home_page/home_page.dart';
import 'package:meal_monkey/screens/login_screen.dart';
import 'package:meal_monkey/screens/new_password_screen.dart';
import 'package:meal_monkey/screens/on_boarding_screen.dart';
import 'package:meal_monkey/screens/otp_screen.dart';
import 'package:meal_monkey/screens/reset_password.dart';
import 'package:meal_monkey/screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 866),
      builder:()=> MaterialApp(
        routes: {
          '/': (context) =>MenuScreen(),//SplashScreen(),
          '/home_page': (context) => HomePage(),
          '/login':(context)=>Login(),
          '/sign_up':(context)=>SignUp(),
          '/reset_password':(context)=>ResetPassword(),
          '/new_password':(context)=>NewPassword(),
          '/otp_screen':(context)=>OTPScreen(),
          '/on_boarding_screen':(context)=>OnBoardingScreen(),
          '/menu':(context)=>MenuScreen(),
          '/profile':(context)=>ProfileScreen(),
          '/offers':(context)=>OffersScreen(),
          '/more':(context)=>MoreScreen(),

        },
        theme: ThemeData(
          primaryColor: KMainColor,
          accentColor: KPlaceholderColor,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
