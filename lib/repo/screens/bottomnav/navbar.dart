import 'package:blinkitapp/repo/screens/navscreens/cart.dart';
import 'package:blinkitapp/repo/screens/navscreens/category.dart';
import 'package:blinkitapp/repo/screens/navscreens/homescreen.dart';
import 'package:blinkitapp/repo/screens/navscreens/printscreen.dart';
import 'package:blinkitapp/repo/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  State<Navbar> createState() {
    return _NavbarState();
  }
}

class _NavbarState extends State<Navbar> {
  int currentindex = 0;

  List<Widget> pages = [homescreen(), Category(), cartscreen(), printts()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentindex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: uihelper.CustomImage(img: "home 1.png"),
            label: "homescreen",
          ),
          BottomNavigationBarItem(
            icon: uihelper.CustomImage(img: "shopping-bag 1.png"),
            label: "shoping",
          ),
          BottomNavigationBarItem(
            icon: uihelper.CustomImage(img: "category 1.png"),
            label: "category",
          ),
          BottomNavigationBarItem(
            icon: uihelper.CustomImage(img: "printer 1.png"),
            label: "print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
