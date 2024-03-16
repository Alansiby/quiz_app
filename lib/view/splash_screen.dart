// ignore_for_file: prefer_const_constructors, must_call_super

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/view/splash_screen2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SplashScreen2()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          // scale: 1,
          "asset/image/Quez-3.jpeg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
