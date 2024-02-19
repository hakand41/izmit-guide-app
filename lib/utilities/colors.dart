import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLinearGradient {
  static LinearGradient baseBackgroundDecoration(
      Color colorone, Color colortwo) {
    return LinearGradient(colors: [colorone, colortwo]);
  }
}
const Color niceBlue = Color(0xff00b4d8);
const Color niceDarkBlue = Color(0xff184e77);
const Color niceVeryDarkBlue = Color(0xff023e8a);
const Color niceWhite = Color(0xffcaf0f8);
const Color niceTextDarkBlue = Color(0xff14213d);
const String backgroundColor = "#F1F5F9";