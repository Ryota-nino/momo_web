import 'package:flutter/material.dart';
import 'package:momo_web/constants.dart';
import 'package:momo_web/screens/dashboard/components/chart.dart';
import 'package:momo_web/screens/dashboard/components/clock_view.dart';
import 'package:momo_web/screens/dashboard/components/strage_info_card.dart';

class Time extends StatelessWidget {
  const Time({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Text(
            "Time",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          ClockView(),
          StrageInfoCard(
            title: "Documents Files",
            svgSrc: "assets/icons/weather/fog.svg",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StrageInfoCard(
            title: "Media Files",
            svgSrc: "assets/icons/media.svg",
            amountOfFiles: "15.3GB",
            numOfFiles: 90,
          ),
          StrageInfoCard(
            title: "Other Files",
            svgSrc: "assets/icons/folder.svg",
            amountOfFiles: "13.3GB",
            numOfFiles: 1128,
          ),
          StrageInfoCard(
            title: "Unknown",
            svgSrc: "assets/icons/unknown.svg",
            amountOfFiles: "15.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
