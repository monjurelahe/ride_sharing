import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ride_sharing/core/const/app_text.dart';
import 'package:ride_sharing/feature/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //Splash with Timer() widget
    // Timer(Duration(seconds: 3), () {
    //   Navigator.of(
    //     context,
    //   ).pushReplacement(MaterialPageRoute(builder: (context) => OnBoarding()));
    // });

    // Splash with Future.delayed() widget
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffA04CF4), Color(0xff584CF4)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/bglogo.png'),
            SizedBox(height: 20),
            Text('T-CONNECT', style: AppText.bgText),
          ],
        ),
      ),
    );
  }
}
