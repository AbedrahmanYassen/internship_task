import 'package:flutter/material.dart';

import 'model/destination_item_data.dart';

class Temps {
  static List<DestinationItemData> items = [
    DestinationItemData(
        cityName: 'Rome', countryName: 'Italy', imgUrl: 'assets/images/img_5.png'),
    DestinationItemData(
        cityName: 'Paris', countryName: 'France', imgUrl: 'assets/images/img_4.png'),
    DestinationItemData(
        cityName: 'Istanbul', countryName: 'Turkey', imgUrl: 'assets/images/img_6.png'),
  ];
}
