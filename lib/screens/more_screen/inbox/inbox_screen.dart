import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/more_screen/inbox/inbox.dart';

class InboxScreen extends StatefulWidget {
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  Inbox inbox=new Inbox(false, 'sstar');
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
                  showBackArrow: true,
                  title: 'Inbox',
                ),
                largeSizedBox,
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
                buildInboxRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildInboxRow() {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          BuildDot(color: KMainColor),
                          Text(
                            'MealMonkey Promotions',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Text('6th July'),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(textSubString(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                              index: 40),),),
                      InkWell(
                          onTap: (){
                            setState(() {
                              if(inbox.click==false){
                                inbox.click=true;
                                inbox.icon='star';
                              }else{
                                inbox.click=false;
                                inbox.icon='sstar';
                              }
                            });
                          },
                          child: Container(child: SvgPicture.asset('assets/images/${inbox.icon}.svg'),))
                    ],
                  ),
                ],
              ),
            );
  }
}
