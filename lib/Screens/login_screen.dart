import 'package:flutter/material.dart';
import 'package:whatsapp_app/Widgets/Ui_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedcountry = "Pakistan";
  List<String> countries = ["germany", "indonesia", "Africa", "England"];

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
        DropdownButtonFormField<String>(
          items: countries.map((String country) {
            return DropdownMenuItem<String>(
              child: Text(country),
              value: country,
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedcountry = value!;
            });
          },
          value: selectedcountry,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
          ),
        ),
      ]),
    );
  }
}
