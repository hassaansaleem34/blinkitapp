import 'package:flutter/material.dart';

class uihelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static Customtext({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
      ),
    );
  }
}
