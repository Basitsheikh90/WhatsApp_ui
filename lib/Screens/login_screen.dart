import 'package:flutter/material.dart';
import 'package:whatsapp_app/Screens/OTP_Screen.dart';
import 'package:whatsapp_app/Widgets/Ui_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phonecontroller = TextEditingController();
  String selectedcountry = "Pakistan";
  List<String> countries = [
    "germany",
    "indonesia",
    "Africa",
    "England",
    "Pakistan"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 80,
        ),
        Center(
          child: UiHelper.customtext(
              text: "Enter your phone Number",
              height: 20,
              color: Colors.green,
              fontweight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        UiHelper.customtext(
            text: "WhatsApp will need to verify your phone", height: 16),
        SizedBox(
          height: 5,
        ),
        UiHelper.customtext(
            text: "number. Carrier charges may apply", height: 16),
        SizedBox(
          height: 5,
        ),
        UiHelper.customtext(
            text: "What's my number?", height: 16, color: Colors.green),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 60, left: 60),
          child: DropdownButtonFormField<String>(
            value: selectedcountry,
            items: countries.map((String country) {
              return DropdownMenuItem<String>(
                value: country,
                child: Text(country),
              );
            }).toList(),
            onChanged: (value) {
              // setState(() {
              //   selectedcountry = value!;
              // });
            },
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green))),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "+92",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: phonecontroller,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            )
          ],
        )
      ]),
      floatingActionButton: UiHelper.custombutton(
          callback: () {
            login(phonecontroller.text.toString());
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Enter your phone Number"),
        backgroundColor: Colors.green,
      ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OtpScreen(
                    phonenumber: phonenumber,
                  )));
    }
  }
}
