import 'package:flutter/material.dart';
import 'package:my_hyundai/screens/member_profile.dart';

import '../constants/colors.dart';
import '../widgets/custom_divider.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(width * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.035),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Members',
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: width * 0.08,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        height: height * 0.07,
                        width: width * 0.17,
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MemberProfile(),
                              ),
                            );
                          },
                          child: Container(
                            height: height * 0.255,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.06),
                              color: containerColor,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.038,
                                ),
                                Text(
                                  'Jessica',
                                  style: TextStyle(
                                      fontSize: width * 0.045,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'Using KONA electric',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white70),
                                ),
                                CustomDivider(
                                  color: Colors.white24,
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.04),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          RichText(
                                            text: const TextSpan(
                                              text: 'Level of access: ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'OpenSans',
                                                  fontWeight: FontWeight.w100),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Adult',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          RichText(
                                            text: const TextSpan(
                                              text: 'Experience: ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'OpenSans',
                                                  fontWeight: FontWeight.w100),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Standard',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                CustomDivider(
                                  color: Colors.white24,
                                ),
                                SizedBox(
                                  height: height * 0.005,
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
                                            width: width * 0.01,
                                          ),
                                          Text(
                                            'Car is active',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: width * 0.045),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '1:43h from start',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.045),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: height * 0.038,
                      foregroundImage: AssetImage('assets/images/profile1.jpg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Container(
                          height: height * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.06),
                            color: circleBgColor,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.038,
                              ),
                              Text(
                                'Matty',
                                style: TextStyle(
                                    fontSize: width * 0.045,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const Text(
                                'You',
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.black),
                              ),
                              CustomDivider(
                                color: Colors.black26,
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.04),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            text: 'Level of access: ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.w100),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Owner',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            text: 'Experience: ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.w100),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Standard',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: height * 0.038,
                      foregroundImage: AssetImage('assets/images/profile2.jpg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Container(
                          height: height * 0.18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.06),
                            color: circleBgColor,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.038,
                              ),
                              Text(
                                'Winston Puppy',
                                style: TextStyle(
                                    fontSize: width * 0.045,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              CustomDivider(
                                color: Colors.black26,
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.04),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            text: 'Level of access: ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.w100),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Other',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            text: 'Experience: ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.w100),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Junior',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: height * 0.038,
                      foregroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  height: height * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.06),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add),
                        Text(
                          'Add new member',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                  ),
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
