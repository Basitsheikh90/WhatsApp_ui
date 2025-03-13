import 'package:flutter/material.dart';
import 'package:whatsapp_app/Screens/login_screen.dart';
import 'package:whatsapp_app/Widgets/Ui_helper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.customtext(
                text: "Welocme to Whatsapp",
                height: 25,
                fontweight: FontWeight.bold,
                color: Color(0XFF000000)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customtext(text: "Read Out  ", height: 18),
                UiHelper.customtext(
                    text: "Privacy policy ", height: 18, color: Colors.blue),
                UiHelper.customtext(text: "Tap", height: 14),
                UiHelper.customtext(text: " ''Agree and Continue''", height: 18)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customtext(text: "to acceft the ", height: 18),
                UiHelper.customtext(
                    text: "Teams of Services", height: 18, color: Colors.blue)
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.custombutton(
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
