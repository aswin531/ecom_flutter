import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String? data;
  double? size;
  Color? color;
  FontWeight? fw;
  TextAlign? textAlign;
  CustomText(
      {super.key,
      required this.data,
      this.size,
      this.color,
      this.fw,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(data.toString(),
        textAlign: textAlign,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fw,
        ));
  }

  Widget subheadText(String text) {
    return Text(text,
        style: GoogleFonts.lato(
          fontSize: size,
          color: color,
          fontWeight: fw,
        ));
  }
}