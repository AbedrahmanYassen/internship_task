import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanPicture extends StatelessWidget {
  const PlanPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 268.h,
      width: 375.w,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: -81.h,
              left: -56.w,
              child: Container(
                width: 476.w,
                height: 349.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_13.png",),
                  ),
                ),
              )),
          Positioned(
            top: 26.h,
            left: 36.w,
            child: Container(
              width: 318.w,
              height: 253.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img_12.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
