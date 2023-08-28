import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_hyundai/widgets/custom_divider.dart';
import 'package:my_hyundai/widgets/driver_stats.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants/colors.dart';

class Profile extends StatefulWidget {
  static const IconData directions_car =
      IconData(0xe1d7, fontFamily: 'MaterialIcons');
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    List<String> title = [
      'Level of access',
      'Level of Experience',
      'Driver license',
    ];

    List<String> subTitle = ['Other', 'Adult', 'Attached'];

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(width * 0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.035, vertical: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: width * 0.08,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CircleAvatar(
                  radius: height * 0.07,
                  foregroundImage: AssetImage('assets/images/profile1.jpg'),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Text(
                  'Jessica Klein',
                  style: TextStyle(
                      fontSize: width * 0.05,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0.05,
                ),
                CustomDivider(
                  color: Colors.black45,
                  indent: 5,
                  endIndent: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Text(
                        'Information',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
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
                              title: Text(
                                title[index],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * 0.045,
                                ),
                              ),
                              subtitle: Text(
                                subTitle[index],
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
                          height: height * 0.01,
                        )
                      ],
                    );
                  },
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
                          'Tracking current location',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.045,
                          ),
                        ),
                        subtitle: Text(
                          isToggled ? 'ON' : 'OFF',
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: CupertinoSwitch(
                          value: isToggled,
                          onChanged: (value) {
                            setState(() {
                              isToggled = value;
                            });
                          },
                        )),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Driver Statistics',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: width * 0.045),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: width * 0.04,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DriverStat(
                      upperText: 'Driving hours',
                      lowerText: '3.5h more than last week',
                      widget: CircularPercentIndicator(
                        radius: width * 0.1,
                        animation: true,
                        circularStrokeCap: CircularStrokeCap.round,
                        arcBackgroundColor: circleBgColor,
                        progressColor: containerColor,
                        center: Text(
                          '7h',
                          style: TextStyle(
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.bold),
                        ),
                        arcType: ArcType.FULL,
                        lineWidth: width * 0.02,
                        percent: 0.45,
                        animationDuration: 1200,
                      ),
                    ),
                    DriverStat(
                      upperText: 'Favorite mode',
                      widget: Container(
                        height: height * 0.095,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: circleBgColor,
                        ),
                        child: Icon(
                          Profile.directions_car,
                          size: width * 0.1,
                        ),
                      ),
                      lowerText: 'After long day',
                    ),
                    DriverStat(
                      upperText: 'Family member',
                      widget: CircleAvatar(
                        radius: width * 0.08,
                        foregroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                      lowerText: 'Winston brother',
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
