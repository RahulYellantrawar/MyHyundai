import 'package:flutter/material.dart';
import 'package:my_hyundai/constants/colors.dart';
import 'package:my_hyundai/widgets/settings_container.dart';

class Settings extends StatelessWidget {
  static const IconData directions_car =
      IconData(0xe1d7, fontFamily: 'MaterialIcons');
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    List<String> listOfStrings = [
      'Seat position',
      'Sound settings',
      'Sound routes',
      'Voice assistant',
      'Stearing wheel',
      'Inside temperature'
    ];

    List<IconData> listOfIcons = [
      Icons.event_seat,
      Icons.volume_up,
      Icons.map,
      Icons.mic,
      directions_car,
      Icons.device_thermostat,
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: width * 0.09,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        height: height * 0.1,
                        width: width * 0.17,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  height: height * 0.55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.1),
                    color: containerColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.025),
                        child: Text(
                          'Here you will find your preferences, most used modes and car settings',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.04,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.4,
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.7,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 12,
                            ),
                            itemCount: 6,
                            itemBuilder: (ctx, index) {
                              return SettingsContainer(
                                iconName: listOfIcons[index],
                                text: listOfStrings[index],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.06),
                    color: preferenceColor,
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text(
                        'Car Settings',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.055,
                        ),
                      ),
                      subtitle: const Text(
                        'Full Statistics',
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
