import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../temp.dart';

class FlightInfoCard extends StatelessWidget {
  const FlightInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312.w,
      height: 154.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [
            Color(0xff1C5E85),
            Color(0xcc5d8fadcc),
          ],
        ),
      ),
      padding:
          EdgeInsets.only(top: 29.h, bottom: 26.h, right: 27.w, left: 21.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "10 May, 12:30 pm",
                textAlign: TextAlign.left,
                style: getTimeTextStyle(),
              ),
              Text(
                "11 May, 12:30 am",
                style: getTimeTextStyle(),
                textAlign: TextAlign.left,
              )
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ABC",
                style: getDestinationAndDepartureStyle(),
              ),
              Image.asset(
                "assets/images/img_2.png",
                width: 29.w,
                height: 26.h,
              ),
              Image.asset(
                "assets/images/img_3.png",
                width: 19.w,
                height: 20.h,
              ),
              Image.asset(
                "assets/images/img_2.png",
                width: 29.w,
                height: 26.h,
              ),
              Text(
                "XYZ",
                style: getDestinationAndDepartureStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 21.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 3.h, bottom: 6.h, left: 6.w, right: 7),
                decoration: getCountryCityBoxDecoration(),
                child: Text(
                  "Cairo, Egypt",
                  style: getCountryCityTextStyle(),
                ),
              ),
              Container(
                decoration: getCountryCityBoxDecoration(),
                padding:
                    EdgeInsets.only(top: 3.h, bottom: 6.h, left: 6.w, right: 7),
                child: Text(
                  "Rome, Italy",
                  style: getCountryCityTextStyle(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle getDestinationAndDepartureStyle() {
    return const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white);
  }

  TextStyle getCountryCityTextStyle() {
    return const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xff3F7EA4));
  }

  TextStyle getTimeTextStyle() {
    return const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white);
  }

  BoxDecoration getCountryCityBoxDecoration() {
    return const BoxDecoration(
        color: Color(0xffADCEE1),
        borderRadius: BorderRadius.all(Radius.circular(3)));
  }
}
