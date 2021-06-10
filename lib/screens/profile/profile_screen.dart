import 'package:flutter/material.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/profile/widgets.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              BuildCartRow(
                showBackArrow: false,
                title: 'Profile',
              ),
              midSizedBox,
              buildProfileImage(),
              smallSizedBox,
              buildEditProfile(),
              SizedBox(height: 12),
              buildProfileName(),
              SizedBox(height: 12),
              buildProfileSignOut(),
              midSizedBox,
              buildProfileData(),
            ],
          ),
        ),
      ),
    ));
  }


}
