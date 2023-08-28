import 'package:flutter/material.dart';
import 'package:my_hyundai/constants/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CarItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    List<IconData> iconsList = [
      Icons.local_gas_station,
      Icons.energy_savings_leaf,
      Icons.water_drop,
    ];

    List<double> indicatorValues = [
      0.85,
      0.65,
      0.45,
    ];

    List<String> percentValues = [
      '85%',
      '65%',
      '45%',
    ];

    List<String> leftValues = [
      '40L left',
      '4L left',
      '5L left',
    ];
    return SizedBox(
      height: height * 0.22,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
        ),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.008),
                height: height * 0.22,
                width: width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.06),
                  color: carItemColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      radius: width * 0.115,
                      animation: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      arcBackgroundColor: circleBgColor,
                      progressColor: containerColor,
                      center: Icon(
                        iconsList[index],
                        size: width * 0.08,
                      ),
                      arcType: ArcType.FULL,
                      lineWidth: width * 0.02,
                      percent: indicatorValues[index],
                      animationDuration: 1200,
                      footer: Text(
                        percentValues[index],
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: width * 0.09,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      leftValues[index],
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
