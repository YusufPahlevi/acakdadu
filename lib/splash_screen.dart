import 'dart:async';
import 'package:flutter/material.dart';
import 'package:roll_dice_teach/dice_roller1.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash_screen';
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => dice_roller1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255), 
      body: Center(
        child: Image.asset('assets/images/logo.png', width: 350), 
      ),
    );
  }
}
