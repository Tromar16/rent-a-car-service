import 'package:flutter/material.dart';

class ListDetail {
  ListDetail(
      {required this.title,
      required this.iconAssetName,
      required this.gradients,
      required this.shadowColor,
      required this.iconTag,
      required this.category,
      required this.textColor,});
  final String title;
  final String iconAssetName;
  final List<Color> gradients;
  final Color shadowColor;
  final Object iconTag;
  final String category;
  final Color textColor;
}

const double opacity = 0.4;

final List<ListDetail> cardDetailList = [
  ListDetail(
    title: 'Jeep',
    iconAssetName: 'lib/images/jeep.png',

    gradients: [
      const Color(0xff089e44),
      const Color(0xff3dd178),
    ],
    shadowColor: const Color(0xff3dd178).withOpacity(opacity),
    iconTag: 'jeep_icon',
    category: 'jeep',
    textColor: const Color(0xff089e44),
  ),
  ListDetail(

    title: 'SUV',
    iconAssetName: 'lib/images/suv.png',

    gradients: [
      const Color(0xff5718d6),
      const Color(0xff8048f0),
    ],
    shadowColor: const Color(0xff8048f0).withOpacity(opacity),
    iconTag: 'suv_icon',
    category: 'SUV',
    textColor: const Color(0xff5718d6),
  ),
  ListDetail(
    title: 'Sports Car',
    iconAssetName: 'lib/images/car.png',

    gradients: [
      const Color(0xff5718d6),
      const Color(0xff8048f0),
    ],
    shadowColor: const Color(0xff8048f0).withOpacity(opacity),
    iconTag: 'car_icon',
    category: 'Sports_car',
    textColor: const Color(0xff5718d6),
  ),

];
