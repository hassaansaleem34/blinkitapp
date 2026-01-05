import 'package:blinkitapp/repo/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class printts extends StatelessWidget {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
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
                child: uihelper.customsearchbar(controller: search),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 170),
              uihelper.Customtext(
                text: "Print Store",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 32,
                fontfamily: "inter",
              ),
            ],
          ),

          uihelper.Customtext(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0xff9C9C9C),
            fontweight: FontWeight.bold,
            fontsize: 14,
            fontfamily: "inter",
          ),
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 163,
                width: 361,
                decoration: BoxDecoration(
                  color: Color(0xffF7CB45),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 14),
                        uihelper.Customtext(
                          text: "Documents",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        uihelper.CustomImage(img: "star.png"),
                        SizedBox(width: 5),
                        uihelper.Customtext(
                          text: "Price starting at rs 3/page",
                          color: Color.fromARGB(255, 6, 6, 6),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        uihelper.CustomImage(img: "star.png"),
                        SizedBox(width: 5),
                        uihelper.Customtext(
                          text: "Paper quality: 70 GSM",
                          color: Color.fromARGB(255, 6, 6, 6),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        uihelper.CustomImage(img: "star.png"),
                        SizedBox(width: 5),
                        uihelper.Customtext(
                          text: "Single side prints",
                          color: Color.fromARGB(255, 6, 6, 6),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff27AF34),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(5),
                              ),
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                uihelper.Customtext(
                                  text: "Login",
                                  color: Color(0XFFFFFFFF),
                                  fontweight: FontWeight.w700,
                                  fontsize: 14,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                right: 20,
                bottom: 70,
                child: uihelper.CustomImage(
                  img: "image 62.png",
                  h: 100,
                  w: 100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
