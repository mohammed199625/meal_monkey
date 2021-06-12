import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/home_page_screen/search_bar.dart';
import '../../constants.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 32, right: 32, top: 32),
                    child: Column(
                      children: [
                        BuildCartRow(
                          showBackArrow: false,
                          title: 'Good morning Akila!',
                        ),
                        smallSizedBox,
                        Row(children: [
                          Text(
                            'Delivering to',
                            style: TextStyle(color: KPlaceholderColor),
                          ),
                        ]),
                        smallSizedBox,
                        _buildCurrentLocation(),
                        smallSizedBox,
                        Row(
                          children: [
                            _buildSearch(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  smallSizedBox,
                  Container(
                      padding: EdgeInsets.only(left: 32),
                      child: _buildCategoryListView(context)),
                  midSizedBox,
                  _buildCategoryTitleWithViewAll(
                      categoryName: 'Popular Restaurents', onClick: () {}),
                  smallSizedBox,
                  _buildPopularRestaurantsListView(context),
                  _buildCategoryTitleWithViewAll(
                      categoryName: 'Most Popular', onClick: () {}),
                  smallSizedBox,
                  Container(
                    width: 1.sw,
                    height: 220.h, // h , w , 2.sh ,sw , sp , r
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: mostPopularListViewItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return mostPopularListViewItems[index];
                        }),
                  ),
                  _buildCategoryTitleWithViewAll(
                      categoryName: 'Recent Items', onClick: () {}),
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: recentItemsRowItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return recentItemsRowItems[index];
                        }),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                height: 80,
                width: 1.sw,
                child: ClipPath(
                  clipper: BottomNavigationNotchClipper(),
                  child: Container(
                    color: Colors.white,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NavBarItem(
                          icon: 'assets/images/menu.svg',
                          label: 'Menu',
                          color: KPlaceholderColor,
                          home: false,
                          onClick: () {
                            Navigator.pushNamed(context, '/menu');
                          },
                        ),
                        NavBarItem(
                          icon: 'assets/images/offers.svg',
                          label: 'Offers',
                          color: KPlaceholderColor,
                          home: false,
                          onClick: () {
                            Navigator.pushNamed(context, '/offers');
                          },
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        NavBarItem(
                          icon: 'assets/images/profile.svg',
                          label: 'Profile',
                          color: KPlaceholderColor,
                          home: false,
                          onClick: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                        ),
                        NavBarItem(
                          icon: 'assets/images/more.svg',
                          label: 'More',
                          color: KPlaceholderColor,
                          home: false,
                          onClick: () {
                            Navigator.pushNamed(context, '/more');
                          },
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
              bottom: 30,
              left: .5.sw - 30,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home_page');
                },
                backgroundColor: KMainColor,
                child: NavBarItem(
                  icon: 'assets/images/home.svg',
                  home: true,
                  onClick: () {
                    Navigator.pushNamed(context, '/home_page');
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Container _buildCategoryTitleWithViewAll(
      {String categoryName, Function onClick}) {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryName,
            style: TextStyle(fontSize: 20),
          ),
          ClickableText(
            text: '',
            clickableText: 'View all',
            color: KMainColor,
            onClick: onClick,
          ),
        ],
      ),
    );
  }

  Row _buildCurrentLocation() {
    return Row(
      children: [
        Text(
          'Current Location',
          style: TextStyle(fontSize: KTextSize),
        ),
        SizedBox(
          width: 20,
        ),
        SvgPicture.asset(
          'assets/images/down_arrow.svg',
          semanticsLabel: 'down_arrow',
          color: KMainColor,
        ),
      ],
    );
  }

  Widget _buildSearch() => SearchWidget(
        text: 'query',
        hintText: 'Search Food',
        //onChanged:(){},
        //searchFood,
      );

  Widget _buildCategoryListView(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 200.h, // h , w , 2.sh ,sw , sp , r
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoriesListViewItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: categoriesListViewItems[index],
              padding: EdgeInsets.only(right: 12),
            );
          }),
    );
  }

  Widget _buildPopularRestaurantsListView(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: popularListViewItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: popularListViewItems[index],
            padding: EdgeInsets.only(bottom: 32),
          );
        });
  }
}

class RecentItemsRow extends StatelessWidget {
  final Function onClick;
  final String imgPath;
  final String label;
  const RecentItemsRow({this.imgPath, this.label, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.only(left: 32, bottom: 12),
        child: Row(
          children: [
            Container(
              width: ScreenUtil().setWidth(100),
              height: ScreenUtil().setHeight(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imgPath),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Café  '),
                    BuildDot(color: KMainColor),
                    Text(' Western Food'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/star.svg',
                      color: KMainColor,
                    ),
                    Text(
                      ' 4.9',
                      style: TextStyle(color: KMainColor),
                    ),
                    Text(
                      '    (124 Ratings)',
                      style: TextStyle(color: KPlaceholderColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final Function onClick;
  final String icon;
  final String label;
  final bool home;
  final Color color;
  const NavBarItem(
      {this.onClick, this.icon, this.label, this.home, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: home ? EdgeInsets.all(10) : EdgeInsets.only(top: 30),
        width: 70,
        height: 70,
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              color: home ? Colors.white : KPlaceholderColor,
              semanticsLabel: label,
            ),
            if (label !=null)
              Text(
                label,
                style: TextStyle(
                  color: home ? Colors.white : KPlaceholderColor,
                ),
              )
          ],
        ),
      ),
    );
  }
}
