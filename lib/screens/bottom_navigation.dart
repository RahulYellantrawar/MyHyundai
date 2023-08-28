import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_hyundai/constants/colors.dart';
import 'package:my_hyundai/screens/members.dart';
import 'package:my_hyundai/screens/profile.dart';
import 'package:my_hyundai/screens/settings.dart';

import '../screens/home.dart';

class BottomBar extends StatefulWidget {
  static const routeName = '/bottom';

  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List _tabList = [
    const HomeScreen(),
    const Settings(),
    const MembersScreen(),
    const Profile(),
  ];

  List<String> listOfStrings = [
    'Home',
    'Settings',
    'Members',
    'Profile',
  ];

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.settings_rounded,
    CupertinoIcons.person_2_fill,
    CupertinoIcons.person_circle_fill,
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            itemCount: _tabList.length,
            itemBuilder: (context, index) {
              return _tabList[index];
            },
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.04, 0, width * 0.04, height * 0.015),
              child: Container(
                height: height * 0.1,
                decoration: BoxDecoration(
                  color: containerColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: width * 0.05,
                      offset: const Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(width * 0.1),
                ),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.055),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      setState(() {
                        pageIndex = index;
                        _pageController.animateToPage(
                          index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                        HapticFeedback.lightImpact();
                      });
                    },
                    splashColor: Colors.white,
                    highlightColor: Colors.white,
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width:
                              index == pageIndex ? width * 0.3 : width * 0.08,
                          alignment: Alignment.center,
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            height: index == pageIndex ? height * 0.06 : 0,
                            width: index == pageIndex ? width * 0.3 : 0,
                            decoration: BoxDecoration(
                              color: index == pageIndex
                                  ? Colors.white
                                  : containerColor,
                              borderRadius: BorderRadius.circular(width * 0.2),
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width:
                              index == pageIndex ? width * 0.3 : width * 0.18,
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    width:
                                        index == pageIndex ? width * 0.06 : 0,
                                  ),
                                  AnimatedOpacity(
                                    opacity: index == pageIndex ? 1 : 0,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child: Text(
                                      index == pageIndex
                                          ? '${listOfStrings[index]}'
                                          : '',
                                      style: TextStyle(
                                        color: containerColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: width * 0.04,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    width: index == pageIndex
                                        ? width * 0.025
                                        : width * 0.03,
                                  ),
                                  Icon(
                                    listOfIcons[index],
                                    size: width * 0.06,
                                    color: index == pageIndex
                                        ? containerColor
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
