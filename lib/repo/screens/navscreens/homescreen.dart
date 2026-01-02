import 'package:blinkitapp/repo/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  TextEditingController search = TextEditingController();

  var sale = [
    {"img": "image 50.png", "text": "Lights, Diyas & \nCandles"},
    {"img": "image 51.png", "text": "Diwali \nGifts"},
    {"img": "image 52.png", "text": "Appliances & \nGadgets"},
    {"img": "image 53.png", "text": "Home & \nLiving"},
  ];

  var category = [
    {"img": "image 54.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun \nBy Bikano"},
    {"img": "image 63.png", "text": "Bikaji Bhujia"},
  ];

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // ✅ FIX 1
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffEC0505),
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
                            color: Colors.white,
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 7),
                          uihelper.Customtext(
                            text: "16 minutes",
                            color: Colors.white,
                            fontweight: FontWeight.w700,
                            fontsize: 20,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          uihelper.Customtext(
                            text: "HOME-",
                            color: Colors.white,
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                          ),
                          uihelper.Customtext(
                            text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                            color: Colors.white,
                            fontsize: 12,
                            fontweight: FontWeight.normal,
                          ),
                          SizedBox(width: 10),
                          uihelper.CustomImage(
                            img: "arrow-down-sign-to-navigate 1.png",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 70,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 15),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 40,
                  child: uihelper.customsearchbar(controller: search),
                ),
              ],
            ),

            uihelper.CustomImage(img: "Line 5.png"),

            // 🔴 Mega Sale
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0xffEC0505),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      uihelper.CustomImage(img: "image 56.png"),
                      uihelper.CustomImage(img: "image 56.png"),
                      uihelper.Customtext(
                        text: "Mega - Sale",
                        color: Colors.white,
                        fontsize: 20,
                        fontweight: FontWeight.bold,
                      ),
                      uihelper.CustomImage(img: "image 55.png"),
                      uihelper.CustomImage(img: "image 55.png"),
                    ],
                  ),

                  // ❌ Expanded removed
                  SizedBox(
                    // ✅ FIX 3
                    height: 140,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sale.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              height: 108,
                              width: 86,
                              decoration: BoxDecoration(
                                color: Color(0xffEAD3D3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  uihelper.Customtext(
                                    text: sale[index]["text"].toString(),
                                    fontsize: 8,
                                    fontweight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 10),
                                  uihelper.CustomImage(
                                    img: sale[index]["img"].toString(),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // ❌ Expanded removed
            SizedBox(
              // ✅ FIX 3
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 108,
                          width: 93,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: uihelper.CustomImage(
                            img: category[index]["img"].toString(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: uihelper.Customtext(
                          text: category[index]["text"].toString(),
                          fontsize: 10,
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            uihelper.CustomImage(img: "timer 4.png"),
                            uihelper.Customtext(
                              text: "16mints",
                              color: Color(0xff9C9C9C),
                              fontweight: FontWeight.w400,
                              fontsize: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            uihelper.Customtext(
                              text: "79rs",
                              color: Color.fromARGB(255, 6, 6, 6),
                              fontweight: FontWeight.bold,
                              fontsize: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            Row(
              children: [
                uihelper.Customtext(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                ),
              ],
            ),
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
          ],
        ),
      ),
    );
  }
}
