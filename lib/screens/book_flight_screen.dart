import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task/widgets/plan_picture.dart';

import '../widgets/data_entering_part.dart';
import '../widgets/switch_toggle.dart';

class BookFlightScreen extends StatelessWidget {
  const BookFlightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff4093CE), Color(0xff9BCEF3)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PlanPicture(),
                Padding(
                  padding: EdgeInsets.only(top: 36.h, left: 37.w, bottom: 10.h),
                  child: const Text(
                    "Book you own Flight",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,fontFamily: "Roboto"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: AnimatedToggle(
                    backgroundColor: const Color(0xffD7EAF8),
                    buttonColor: const Color(0xff2F7694),
                    values: const ["One Way", "Two Round"],
                    onToggleCallback: (value) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 38.w, bottom: 35.h),
                  child: const DataEnteringPart(),
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
