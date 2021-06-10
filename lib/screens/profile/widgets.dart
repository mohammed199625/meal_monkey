import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../reusable_widget.dart';

Text buildProfileName() {
  return Text(
    'Hi there Emilia!',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  );
}

ClickableText buildProfileSignOut() {
  return ClickableText(
    text: '',
    clickableText: 'Sign Out',
    color: Colors.black,
    onClick: () {},
  );
}

Column buildProfileData() {
  return Column(
    children: [
      ReusableTextField(
        showHint: true,
        label: 'Name',
      ),
      ReusableTextField(
        showHint: true,
        label: 'Email',
      ),
      ReusableTextField(
        showHint: true,
        label: 'Mobile No',
      ),
      ReusableTextField(
        showHint: true,
        label: 'Address',
      ),
      ReusableTextField(
        hidePassword: true,
        showHint: true,
        label: 'Password',
      ),
      ReusableTextField(
        hidePassword: true,
        showHint: true,
        label: 'Confirm Password',
      ),
      ReusableButton(
        buttonColor: KMainColor,
        buttonLabelColor: Colors.white,
        buttonBorderColor: KMainColor,
        buttonLabel: 'Save',
        onClick: () {},
      ),
    ],
  );
}

Row buildEditProfile() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset('assets/images/edit_pen.svg',
          width: 10, height: 10, color: KMainColor),
      SizedBox(
        width: 5,
      ),
      ClickableText(
        color: KMainColor,
        text: '',
        clickableText: 'Edit Profile',
        onClick: () {},
      )
    ],
  );
}

Container buildProfileImage() {
  return Container(
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/images/emilia.jpg'),
      radius: 60,
    ),
  );
}