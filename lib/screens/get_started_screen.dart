import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task/temp.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff4093CE), Color(0xff9BCEF3)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(top: 80.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 313.w,
                height: 304.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/img.png"),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              const Text(
                "Let's Enjoy A new world",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: Color(0xffffffff),fontFamily: "Roboto"
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 31.h,
              ),
              const Text(
                "Search the safest destination",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff3F3F3F),fontFamily: "Roboto"
                ),
              ),
              SizedBox(
                height: 79.h,
              ),
              SizedBox(
                height: 58.h,
                width: 275.w,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: const Color(0xff2F7694),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      // height: 21,
                      color: Colors.white,
                        fontFamily: "Roboto"
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
