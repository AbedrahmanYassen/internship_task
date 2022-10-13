import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task/widgets/home_screen_textField.dart';

import '../temp.dart';
import '../widgets/destinations_list_widget.dart';
import '../widgets/flight_info_card.dart';

/*TODO: I NEED to refine the padding of every part of the home screen */
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false ,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff4093CE), Color(0xff9BCEF3)],
          ),
        ),
        child: Scaffold(

          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: '',
              ),
            ],
            currentIndex: 1,
            selectedItemColor: Color(0xff2F7694),
            onTap: (int value) {},
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.only(left: 37.w, right: 42.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 38.h,
                ),
                const CustomAppBar(),
                SizedBox(
                  height: 35.h,
                ),
                SizedBox(
                  height: 73.h,
                  width: 253.w,
                  child: const Text(
                    "Where you want to go?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const HomeScreenTextField(),
                SizedBox(
                  height: 30.h,
                ),
                const Text(
                  "Upcoming Trips",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                const FlightInfoCard(),
                Row(
                  children: [
                    Text(
                      "Popular Destinations",
                      style: getPopularDestination(),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "view all",
                        style: viewAllStyle(),
                      ),
                    ),
                  ],
                ),
                const DestinationsListWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle getPopularDestination() {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.white,fontFamily: "Roboto"
    );
  }

  TextStyle viewAllStyle() {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      decoration: TextDecoration.underline,fontFamily: "Roboto"
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              width: 40.w,
              height: 40.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/img_10.png"),
                ),
              ),
            ),
            SizedBox(
              width: 11.w,
            ),
            const Text(
              "Hi Tania",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
        CircleAvatar(
          backgroundColor: const Color(0xffEAEAEA),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/img_1.png",
              width: 16,
              height: 19.5,
            ),
          ),
        )
      ],
    );
  }
}
