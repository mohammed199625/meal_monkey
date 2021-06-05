import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

final PageController _pageController = PageController();
int currentPage = 0;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<Map<String, String>> onBoardingData = [
    {
      'image': 'assets/images/on_boarding1.svg',
      'mainText': 'Find Food You Love',
      'text': 'Discover the best foods from over 1,000\n'
          ' restaurants and fast delivery to your doorstep'
    },
    {
      'image': 'assets/images/on_boarding2.svg',
      'mainText': 'Fast Delivery',
      'text': 'Fast food delivery to your home,\n'
          ' office wherever you are'
    },
    {
      'image': 'assets/images/on_boarding3.svg',
      'mainText': 'Live Tracking',
      'text': 'Real time tracking of your food on the app\n'
          ' once you placed the order'
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: onBoardingData.length,
                    itemBuilder: (context, index) => OnBoardingSlider(
                      image: onBoardingData[index]['image'],
                      mainText: onBoardingData[index]['mainText'],
                      text: onBoardingData[index]['text'],
                      length: onBoardingData.length,
                    ),
                  ),
                ),
              ),
              ReusableButton(
                buttonColor: KMainColor,
                buttonLabelColor: Colors.white,
                buttonBorderColor: KMainColor,
                buttonLabel: 'Next',
                onClick: () {
                  if (_pageController.hasClients) {
                    if (currentPage == 2) {
                      Navigator.pushNamed(context, '/home_page');
                    }
                    _pageController.animateToPage(
                      currentPage + 1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },

              ),
              midSizedBox,
            ],
          ),
        ),
      ),
    );
  }
}


class OnBoardingSlider extends StatelessWidget {
  final String mainText;
  final String text;
  final String image;
  final int length;
  const OnBoardingSlider({this.text, this.image, this.mainText, this.length});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              SvgPicture.asset(
                image,
              ),
              midSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      children: List.generate(
                          length,
                          (index) => BuildDot(
                            color:  currentPage == index ? KMainColor : KPlaceholderColor,
                              ))),
                ],
              ),
              smallSizedBox,
              Text(
                mainText,
                style: TextStyle(
                  fontSize: KMainTextSize,
                ),
                textAlign: TextAlign.center,
              ),
              smallSizedBox,
              Text(
                text,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}
