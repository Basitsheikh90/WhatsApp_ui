import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_app/Screens/onboarding_screen.dart';
import 'package:whatsapp_app/Widgets/Ui_helper.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp 1.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.customtext(
                text: "Whatsapp",
                height: 22,
                fontweight: FontWeight.bold,
                color: Colors.black)
          ],
        ),
      ),
    );
  }
}
