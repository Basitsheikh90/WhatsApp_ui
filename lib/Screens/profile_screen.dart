import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_app/Widgets/Ui_helper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController namecontroller = TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            UiHelper.customtext(
                text: "Profile info",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 40,
            ),
            UiHelper.customtext(
                text: "Please provide your name and an optional", height: 15),
            UiHelper.customtext(text: "Profile photo", height: 15),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  _openbottom(context);
                },
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.grey,
                  child: Image.asset(
                    "assets/images/photo-camera 1.png",
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: namecontroller,
                    decoration: InputDecoration(
                        hintText: "Type your name here",
                        hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF05AA82)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82)))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/happy-face 1.png"),
              ],
            )
          ],
        ),
      ),
      floatingActionButton:
          UiHelper.custombutton(callback: () {}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // _openBottom(BuildContext context) {
  _openbottom(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        _pickimage(ImageSource.camera);
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _pickimage(ImageSource.gallery);
                      },
                      icon: Icon(
                        Icons.image,
                        size: 80,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }

  _pickimage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(ex.toString()),
        backgroundColor: Colors.green,
      ));
    }
  }
}
