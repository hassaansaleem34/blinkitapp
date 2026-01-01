import 'package:blinkitapp/repo/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category extends StatelessWidget {
  TextEditingController search = TextEditingController();

  var grocery = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 21.png", "text": "Dry Fruits & \nCereals"},
    {"img": "image 22.png", "text": "Kitchen & \nAppliances"},
    {"img": "image 23.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];

  var grocery2 = [
    {"img": "image 21.png", "text": "Dry Fruits & \nCereals"},
    {"img": "image 22.png", "text": "Kitchen & \nAppliances"},
    {"img": "image 23.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];

  var grocery3 = [
    {"img": "image 31.png", "text": "Dry Fruits & \nCereals"},
    {"img": "image 32.png", "text": "Kitchen & \nAppliances"},
    {"img": "image 33.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 34.png", "text": "Noodles & \nPacket Food"},
  ];

  Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Header Stack
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
                        SizedBox(width: 10),
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
                        SizedBox(width: 7, height: 10),
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
                        SizedBox(width: 10, height: 10),
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
          // Grocery & Kitchen Title
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: uihelper.Customtext(
              text: "Grocery & Kitchen",
              color: Colors.black,
              fontweight: FontWeight.w700,
              fontsize: 14,
            ),
          ),
          SizedBox(height: 10),

          // Grocery Horizontal Scroll
          Row(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),

                    itemCount: grocery.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 78,
                              width: 71,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffD9EBEB),
                              ),
                              child: uihelper.CustomImage(
                                img: grocery[index]["img"].toString(),
                              ),
                            ),
                            SizedBox(height: 5),
                            uihelper.Customtext(
                              text: grocery[index]["text"].toString(),
                              color: Colors.black,
                              fontweight: FontWeight.normal,
                              fontsize: 10,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          // Grocery2 Horizontal Scroll
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: grocery2.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffD9EBEB),
                        ),
                        child: uihelper.CustomImage(
                          img: grocery2[index]["img"].toString(),
                        ),
                      ),
                      SizedBox(height: 5),
                      uihelper.Customtext(
                        text: grocery2[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 10),
          // Snacks & Drinks Title
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: uihelper.Customtext(
              text: "Snacks & Drinks",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 14,
            ),
          ),
          SizedBox(height: 10),

          // Grocery3 Horizontal Scroll
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: grocery3.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffD9EBEB),
                        ),
                        child: uihelper.CustomImage(
                          img: grocery3[index]["img"].toString(),
                        ),
                      ),
                      SizedBox(height: 5),
                      uihelper.Customtext(
                        text: grocery3[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
