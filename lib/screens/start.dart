import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_hyundai/constants/colors.dart';
import 'package:my_hyundai/screens/drag_container.dart';
import 'package:my_hyundai/widgets/car_items.dart';
import 'package:my_hyundai/widgets/personalize.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  bool isToggled = false;
  bool isExpanded = false;
  bool isContainerVisible = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(width * 0.02),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'MyHyundai',
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
                  height: height * 0.04,
                ),
                AnimatedSwitcher(
                  switchInCurve: Curves.linear,
                  switchOutCurve: Curves.linear,
                  duration: Duration(milliseconds: 1500),
                  child: isContainerVisible
                      ? Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.1,
                                ),
                                Container(
                                  height: height * 0.73,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(width * 0.02),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.06),
                                    color: containerColor,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text: 'You are entering the\n',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'OpenSans',
                                              fontWeight: FontWeight.w100),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'KONA\n',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: width * 0.15),
                                            ),
                                            TextSpan(
                                              text: 'ELECTRIC',
                                              style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: width * 0.06),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.1,
                                      ),
                                      Text(
                                        'I am pairing your phone with Your Hyundai.\nIt will take a couple of seconds',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.04,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                      CupertinoSwitch(
                                        trackColor: Colors.white54,
                                        value: isToggled,
                                        onChanged: (value) {
                                          setState(() {
                                            isToggled = value;
                                            isContainerVisible = !value;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                      Text(
                                        'Once app is paired I will turn the car mode one to reduce distruction and help you to focus on the road',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.04,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.04,
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
                        )
                      : PersonalizeWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
