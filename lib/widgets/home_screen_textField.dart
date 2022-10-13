import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenTextField extends StatelessWidget {
  const HomeScreenTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 300.w,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextField(

        controller: TextEditingController(),
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.only(top: 19.h, bottom: 20.h),
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xffBBB7B7),
          ),

          hintText: "Search a flight",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(
            Icons.search,
            size: 17.5,
            color: Color(0xffBBB7B7),
          ),
        ),
      ),
    );
  }
}
