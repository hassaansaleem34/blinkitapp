import 'package:blinkitapp/repo/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cartscreen extends StatelessWidget {
  TextEditingController searchcontrol = TextEditingController();

  cartscreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Color(0xffF7CB45),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),

                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Row(
                          children: [
                            SizedBox(height: 0, width: 10),
                            uihelper.Customtext(
                              text: "Blinkit in",
                              color: Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 12,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(height: 10, width: 7),
                            uihelper.Customtext(
                              text: "16 minutes",
                              color: Color(0XFF000000),
                              fontweight: FontWeight.w700,
                              fontsize: 20,
                              fontfamily: "bold",
                            ),
                          ],
                        ),
                        SizedBox(height: 8),

                        Row(
                          children: [
                            SizedBox(height: 10, width: 10),
                            uihelper.Customtext(
                              text: "HOME-",
                              color: Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 12,
                            ),
                            uihelper.Customtext(
                              text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                              color: Color(0XFF000000),
                              fontweight: FontWeight.normal,
                              fontfamily: "regular",
                              fontsize: 12,
                            ),
                            SizedBox(width: 10),
                            uihelper.CustomImage(
                              img: "arrow-down-sign-to-navigate 1.png",
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 30,
                    bottom: 70,

                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.black, size: 15),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 40,
                    child: uihelper.customsearchbar(controller: searchcontrol),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            uihelper.CustomImage(img: "shopping-cart (1) 1.png"),
            SizedBox(height: 20),
            uihelper.Customtext(
              text: "Reordering will be easy",
              color: Color(0xff000000),
              fontweight: FontWeight.bold,
              fontsize: 16,
            ),
            uihelper.Customtext(
              text: "Items you order will show up here so you can buy",
              color: Color(0xff000000),
              fontweight: FontWeight.normal,
              fontsize: 10,
            ),
            uihelper.Customtext(
              text: "them again easily.",
              color: Color(0xff000000),
              fontweight: FontWeight.normal,
              fontsize: 10,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                uihelper.Customtext(
                  text: "Bestsellers",
                  color: Color(0xff000000),
                  fontweight: FontWeight.bold,
                  fontsize: 16,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Column(
                  children: [
                    Stack(
                      children: [
                        uihelper.CustomImage(img: "image 45.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 70),
                          child: uihelper.customadd(),
                        ),
                      ],
                    ),
                    uihelper.Customtext(
                      text: "Amul Taaza Toned",
                      color: Color(0xff000000),
                      fontweight: FontWeight.normal,
                      fontsize: 8,
                    ),
                    uihelper.Customtext(
                      text: "Fresh Milk",
                      color: Color(0xff000000),
                      fontweight: FontWeight.normal,
                      fontsize: 8,
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Stack(
                      children: [
                        uihelper.CustomImage(img: "image 44.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 70),
                          child: uihelper.customadd(),
                        ),
                      ],
                    ),
                    uihelper.Customtext(
                      text: "POTATO",
                      color: Color(0xff000000),
                      fontweight: FontWeight.normal,
                      fontsize: 8,
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Stack(
                      children: [
                        uihelper.CustomImage(img: "image 46.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 70),
                          child: uihelper.customadd(),
                        ),
                      ],
                    ),
                    uihelper.Customtext(
                      text: "Tomatoezzz",
                      color: Color(0xff000000),
                      fontweight: FontWeight.normal,
                      fontsize: 8,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
