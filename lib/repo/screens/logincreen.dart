import 'package:blinkitapp/repo/screens/bottomnav/navbar.dart';
import 'package:blinkitapp/repo/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              uihelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
              SizedBox(height: 10),
              uihelper.CustomImage(img: "image 10.png"),

              uihelper.Customtext(
                text: "FIRST APP LOGIN HERE",
                color: Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamily: "bold",
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 229, 227, 227),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      uihelper.Customtext(
                        text: "HASSAAN",
                        color: Colors.black,
                        fontweight: FontWeight.w500,
                        fontsize: 14,
                      ),
                      SizedBox(height: 10),
                      uihelper.Customtext(
                        text: "078XXXXX",
                        color: Color.fromARGB(255, 167, 166, 166),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold",
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Navbar()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
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
                              SizedBox(width: 5),
                              uihelper.CustomImage(img: "image 9.png"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      uihelper.Customtext(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0xFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                      SizedBox(height: 10),

                      uihelper.Customtext(
                        text: "or login with phone number",
                        color: Color(0xff269237),
                        fontweight: FontWeight.normal,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
