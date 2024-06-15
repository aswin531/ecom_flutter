import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class CustomTextStyles {
  static double getTextScaleFactor(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    if (width > 800) {
      return 1.0; // Base font size for large screens (web)
    } else if (width > 600) {
      return 0.9; // Slightly smaller for tablets
    } else {
      return 0.8; // Smaller for mobile screens
    }
  }

  static TextStyle _baseTextStyle(BuildContext context, double fontSize,
      {FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontSize: fontSize * getTextScaleFactor(context),
      fontFamily: 'OpenSans',
      fontWeight: fontWeight,
    );
  }

  static TextStyle bodyText(BuildContext context) =>
      _baseTextStyle(context, 22.0);

  static TextStyle title(BuildContext context) =>
      _baseTextStyle(context, 28.0, fontWeight: FontWeight.bold);

  static TextStyle subtitle(BuildContext context) =>
      _baseTextStyle(context, 20.0, fontWeight: FontWeight.w600);

  static TextStyle caption(BuildContext context) =>
      _baseTextStyle(context, 16.0, fontWeight: FontWeight.w300);

  static TextStyle buttonLabel(BuildContext context) =>
      _baseTextStyle(context, 18.0, fontWeight: FontWeight.w500)
          .copyWith(color: Colors.white);

  static TextStyle priceTag(BuildContext context) =>
      _baseTextStyle(context, 24, fontWeight: FontWeight.bold)
          .copyWith(color: bgThunderstorm);

  // Add more styles as needed
}
