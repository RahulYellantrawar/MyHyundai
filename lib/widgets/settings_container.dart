import 'package:flutter/material.dart';
import 'package:my_hyundai/constants/colors.dart';

class SettingsContainer extends StatelessWidget {
  final IconData iconName;
  final String text;
  SettingsContainer({super.key, required this.iconName, required this.text});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.1,
      width: width * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.04),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.07,
            width: width * 0.15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: circleBgColor,
            ),
            child: Icon(
              iconName,
              size: width * 0.08,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: width * 0.043,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
