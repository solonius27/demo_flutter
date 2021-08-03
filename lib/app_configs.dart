import 'package:demo_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';


// to help scale up or scale down sizes depending on the screen densities
double calculatefontSize(double size) {
  var val = size / 8.53;
  return val * SizeConfig.heightMultiplier;
}

final pageMargin = EdgeInsets.only(
  left: calculatefontSize(28),
  right: calculatefontSize(28),
  top: calculatefontSize(20),
  //bottom: calculatefontSize(20),
);

Widget appText(String tx, double size,
    {FontWeight weight = FontWeight.w500,
    topmargin = 0.0,
    bottommargin = 0.0,
    leftmargin = 0.0,
    rightmargin = 0.0,
    TextAlign align = TextAlign.center,
    Color color = Colors.black,
    double space}) {
  return Container(
    margin: EdgeInsets.only(
        top: calculatefontSize(topmargin),
        bottom: calculatefontSize(bottommargin),
        left: calculatefontSize(leftmargin),
        right: calculatefontSize(rightmargin)),
    child: Text(
      tx == null ? "" : tx,
      softWrap: true,
      //overflow: TextOverflow.ellipsis,
      textAlign: align,
      style: TextStyle(
        fontSize: calculatefontSize(size),
        fontWeight: weight,
        color: color,
        letterSpacing: space,
      ),
    ),
  );
}
