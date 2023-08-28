import 'package:flutter/material.dart';
import 'package:my_hyundai/constants/colors.dart';

class DriverStat extends StatelessWidget {
  String upperText;
  Widget widget;
  String lowerText;
  DriverStat(
      {super.key,
      required this.upperText,
      required this.widget,
      required this.lowerText});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.25,
      width: width * 0.3,
      padding: EdgeInsets.all(width * 0.02),
      decoration: BoxDecoration(
          color: carItemColor,
          borderRadius: BorderRadius.circular(width * 0.04)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            upperText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: width * 0.045,
            ),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          widget,
          SizedBox(
            height: height * 0.005,
          ),
          Text(
            lowerText,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: width * 0.035,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
