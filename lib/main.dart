import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/screens/Menu/beverages_screen.dart';
import 'package:meal_monkey/screens/Menu/dessert_screen.dart';
import 'package:meal_monkey/screens/Menu/food_screen.dart';
import 'package:meal_monkey/screens/Menu/promotions_screen.dart';
import 'package:meal_monkey/screens/change_address/change_address.dart';
import 'package:meal_monkey/screens/check_out/check_out.dart';
import 'package:meal_monkey/screens/home_page_screen/home_page.dart';
import 'package:meal_monkey/screens/more_screen/about_us/about_us.dart';
import 'package:meal_monkey/screens/more_screen/inbox/inbox_screen.dart';
import 'package:meal_monkey/screens/more_screen/my_orders_screen/my_orders_screen.dart';
import 'package:meal_monkey/screens/more_screen/notifications/notificatons_screen.dart';
import 'package:meal_monkey/screens/more_screen/payment_screen/payment_screen.dart';
import 'screens/Menu/menu_screen.dart';
import 'screens/more_screen/more_screen.dart';
import 'screens/offers/offers_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'package:meal_monkey/screens/splash_screen.dart';
import 'package:meal_monkey/screens/login_screen.dart';
import 'screens/reset_password/new_password_screen.dart';
import 'screens/on_boarding_screen/on_boarding_screen.dart';
import 'screens/reset_password/otp_screen.dart';
import 'screens/reset_password/reset_password.dart';
import 'package:meal_monkey/screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 866),
      builder:()=> MaterialApp(
        theme: ThemeData(
          primaryColor: KMainColor,
          accentColor: KPlaceholderColor,
        ),
        routes: {
          '/': (context) =>SplashScreen(),
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
          '/food':(context)=>FoodScreen(),
          '/beverages':(context)=>BeveragesScreen(),
          '/desserts':(context)=>DessertScreen(),
          '/promotions':(context)=>PromotionsScreen(),
          '/payment':(context)=>PaymentScreen(),
          '/notifications':(context)=>NotificationsScreen(),
          '/my_orders':(context)=>MyOrdersScreen(),
          '/inbox':(context)=>InboxScreen(),
          '/about_us':(context)=>AboutUsScreen(),
          '/check_out':(context)=>CheckOut(),
          '/change_address':(context)=>ChangeAddress(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
