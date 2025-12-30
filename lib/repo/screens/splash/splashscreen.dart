import 'dart:async';

import 'package:blinkitapp/domain/constants/appcolors.dart';
import 'package:blinkitapp/repo/screens/logincreen.dart';
import 'package:blinkitapp/repo/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.scaffoldbackgroung,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [uihelper.CustomImage(img: "splash.png")],
        ),
      ),
    );
  }
}
