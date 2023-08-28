import 'package:flutter/material.dart';
import 'package:my_hyundai/constants/colors.dart';
import 'package:my_hyundai/widgets/car_items.dart';
import 'package:my_hyundai/widgets/custom_divider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(width * 0.025),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hi, Matty',
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                      height: height * 0.05,
                      width: height * 0.09,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: height * 0.135,
                      ),
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.06),
                          color: containerColor,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.03,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: width * 0.085,
                                foregroundImage:
                                    AssetImage('assets/images/profile1.jpg'),
                              ),
                              title: Text(
                                'Jessica',
                                style: TextStyle(
                                    fontSize: width * 0.05,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              subtitle: Text(
                                'Using KONA electric',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white70),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            ),
                            CustomDivider(
                              color: Colors.white24,
                            ),
                            SizedBox(
                              height: height * 0.0055,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.04),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle_rounded,
                                        color: Colors.green,
                                        size: width * 0.04,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Car is active',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.04),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '1:43h from start',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.04),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    alignment: Alignment.topCenter,
                    'assets/images/car.png',
                    height: height * 0.2,
                    width: width * 0.7,
                  )
                ],
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Car',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'See All',
                          style: TextStyle(
                              fontFamily: 'OpenSans', fontSize: width * 0.05),
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
              CarItems(),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                height: height * 0.12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.04),
                  color: preferenceColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: width * 0.04),
                  child: ListTile(
                    title: Text(
                      'My Preferences',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.06,
                      ),
                    ),
                    subtitle: Text(
                      'Last update 5 days ago.',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: width * 0.06,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.15,
              )
            ],
          ),
        ),
      )),
    );
  }
}
