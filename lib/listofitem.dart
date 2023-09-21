import 'package:flutter/material.dart';

Widget normaltext(
  String? text,
  Color? color,
  double? size,
) {
  return Text(
    text!,
    style: TextStyle(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: size,
        fontFamily: "Lato"),
  );
}
