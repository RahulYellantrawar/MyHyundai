import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_hyundai/screens/bottom_navigation.dart';

import '../constants/colors.dart';

class PersonalizeWidget extends StatefulWidget {
  const PersonalizeWidget({super.key});

  @override
  State<PersonalizeWidget> createState() => _PersonalizeWidgetState();
}

class _PersonalizeWidgetState extends State<PersonalizeWidget> {
  bool isToggled = true;
  bool isContainerVisible = false;
  bool isModeClicked = false;
  int currentIndex = 0;

  List<String> modes = [
    'Work from car',
    'With children',
    'Alone ride',
    'Long day',
    'Standard mode',
    'Sports mode',
  ];

  List<IconData> iconNames = [
    Icons.work,
    Icons.child_care,
    Icons.person,
    FontAwesomeIcons.road,
    Icons.auto_fix_normal,
    Icons.sports_motorsports
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: height * 0.12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * 0.06),
            color: carItemColor,
          ),
          child: Center(
            child: ListTile(
              subtitle: const Text(
                'Your app is paired with KONA Electric and automatically swtched to Car Interface.',
                style: TextStyle(color: Colors.black),
              ),
              trailing: CupertinoSwitch(
                value: isToggled,
                onChanged: (value) {
                  setState(() {
                    isToggled = value;
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * 0.08),
            color: containerColor,
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: '0:01h ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'from start',
                      style: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: isModeClicked ? height * 0.03 : height * 0.02,
              ),
              AnimatedSwitcher(
                switchInCurve: Curves.linear,
                switchOutCurve: Curves.linear,
                duration: Duration(milliseconds: 2500),
                child: isContainerVisible
                    ? isModeClicked
                        ? Icon(
                            iconNames[currentIndex],
                            size: width * 0.2,
                            color: Colors.white,
                          )
                        : Text(
                            "Choose the mode",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.07,
                                fontWeight: FontWeight.w400),
                          )
                    : Text(
                        "Let's personalize your ride before start",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.08,
                            fontWeight: FontWeight.w200),
                      ),
              ),
              SizedBox(
                height: isContainerVisible ? height * 0.04 : height * 0.01,
              ),
              AnimatedSwitcher(
                switchInCurve: Curves.linear,
                switchOutCurve: Curves.linear,
                duration: Duration(microseconds: 2500),
                child: isContainerVisible
                    ? isModeClicked
                        ? RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: '${modes[currentIndex].toUpperCase()}\n',
                              style: TextStyle(
                                fontSize: width * 0.08,
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w400,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'ACTIVATED',
                                  style: TextStyle(
                                    fontSize: width * 0.06,
                                    fontFamily: 'NUnito',
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.3,
                              mainAxisSpacing: 18,
                              crossAxisSpacing: 1,
                            ),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isModeClicked = true;
                                    currentIndex = index;
                                  });
                                },
                                child: Container(
                                  height: height * 0.23,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      modes[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            isContainerVisible = true;
                          });
                        },
                        child: Container(
                          height: height * 0.23,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(width * 0.02),
                            height: height * 0.2,
                            width: width * 0.36,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.line_horizontal_3_decrease,
                                  size: width * 0.07,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Tap to select mode',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
              ),
              SizedBox(
                height: height * 0.02,
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          height: height * 0.12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * 0.06),
            color: carItemColor,
          ),
          child: Center(
            child: ListTile(
              title: Text(
                'My Preferences',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.045,
                ),
              ),
              subtitle: const Text(
                'Last update 5 days ago',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: width * 0.055,
                color: Colors.black87,
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        isModeClicked
            ? GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => BottomBar()));
                },
                child: Container(
                  height: height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.06),
                    color: containerColor,
                  ),
                  child: Center(
                    child: Text(
                      'Go to Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.045,
                      ),
                    ),
                  ),
                ),
              )
            : Container(
                height: height * 0.12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.06),
                  color: circleBgColor,
                ),
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Car registration certificate',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.045,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: width * 0.055,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
