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

  static customsearchbar({required TextEditingController controller}) {
    return Container(
      height: 37,
      width: 346,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0xffC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search'ice-cream",
          isDense: true, // 🔥 important
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          prefixIcon: uihelper.CustomImage(
            img: "search-interface-symbol 1.png",
          ),
          suffixIcon: uihelper.CustomImage(img: "mic 1.png"),
        ),
      ),
    );
  }

  static customadd() {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(1),
        border: Border.all(color: Color(0xff27AF34)),
      ),
      child:Center(
      
      child: uihelper.Customtext(
        text: "ADD",
        color: Color(0xff27AF34),
        fontweight: FontWeight.w400,
        fontsize: 6,
      ),
      )
    );
    
  }
}
