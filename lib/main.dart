import 'package:flutter/material.dart';
import 'package:whatsapp_app/Screens/splash_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
          useMaterial3: false),
      home: SplashScreen(),
    );
  }
}
