import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataEnteringPart extends StatelessWidget {
  const DataEnteringPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 335.h,
      width: 308.w,
      padding:
          EdgeInsets.only(top: 24.h, left: 19.w, bottom: 31.h, right: 21.w),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          const DataEnteringItem(label: "FROM",fieldCurrentValue: "FCO",),
          const DataEnteringItem(label: "TO",fieldCurrentValue: "CIA"),
          const DataEnteringItem(label: "DATE",fieldCurrentValue: "10 May,12 am"),
          Container(
            width: 270.w,
            height: 50.h,
            decoration: const BoxDecoration(
                color: Color(0xff2F7694),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: TextButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  "View Flights",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,fontFamily: "Roboto"),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataEnteringItem extends StatelessWidget {
  final String label;
  final String fieldCurrentValue ;
  const DataEnteringItem({Key? key, required this.label,required this.fieldCurrentValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.label,
          style: const TextStyle(
          fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff858484),
          ),
        ),
         DataEnteringTextField(textEditingController: TextEditingController(text: fieldCurrentValue),),
        SizedBox(
          height: 15.h,
        )
      ],
    );
  }
}

class DataEnteringTextField extends StatelessWidget {
  final TextEditingController textEditingController ;
  const DataEnteringTextField({Key? key,required this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 267.w,
      decoration: const BoxDecoration(
        color: Color(0xffE0EDF6),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child:  TextField(
        controller: textEditingController,
        style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15,color: Color(0xff505050),fontFamily: "Roboto"),
        decoration: InputDecoration(

          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
