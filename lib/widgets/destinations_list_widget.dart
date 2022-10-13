import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/destination_item_data.dart';
import '../temp.dart';

class DestinationsListWidget extends StatelessWidget {
  const DestinationsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DestinationItem(
            destinationItemData: Temps.items[index],
          );
        },
        itemCount: Temps.items.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 14.w,
          );
        },
      ),
    );
  }
}

class DestinationItem extends StatelessWidget {
  final DestinationItemData destinationItemData;
  const DestinationItem({Key? key, required this.destinationItemData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.h,
      height: 168.w,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 2, right: 2),
            child: Container(
              width: 91.w,
              height: 114.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(destinationItemData.imgUrl),
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 9.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    destinationItemData.cityName,
                    style: getCityTextStyle(),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    destinationItemData.countryName,
                    style: getCountryStyle(),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  TextStyle getCityTextStyle() {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Color(0xff5A5A5A),
    );
  }

  TextStyle getCountryStyle() {
    return const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xffACABAB));
  }
}
