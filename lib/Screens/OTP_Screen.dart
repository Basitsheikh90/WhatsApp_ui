import 'package:flutter/material.dart';
import 'package:whatsapp_app/Widgets/Ui_helper.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
  String phonenumber;
  OtpScreen({required this.phonenumber});

  TextEditingController otp1controller = TextEditingController();
  TextEditingController otp2controller = TextEditingController();
  TextEditingController otp3controller = TextEditingController();
  TextEditingController otp4controller = TextEditingController();
  TextEditingController otp5controller = TextEditingController();
  TextEditingController otp6controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            UiHelper.customtext(
                text: "Verifying your number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            UiHelper.customtext(
                text: "you,ve tired to Register +92${phonenumber}", height: 15),
            UiHelper.customtext(
                text: "recently. Wait beforec requesting an sms or a call",
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customtext(text: "with your code.  ", height: 15),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: UiHelper.customtext(
                        text: "Wrong Number?",
                        height: 15,
                        color: Color(0XFF00A884)))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainers(otp1controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainers(otp2controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainers(otp3controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainers(otp4controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainers(otp5controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainers(otp6controller),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            UiHelper.customtext(
                text: "Didn't recieve code?",
                height: 14,
                color: Color(0XFF00A884)),
          ],
        ),
      ),
      floatingActionButton:
          UiHelper.custombutton(callback: () {}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
