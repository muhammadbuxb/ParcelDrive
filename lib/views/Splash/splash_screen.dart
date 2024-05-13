import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parcel_rider/views/Home/home_page.dart';
import 'package:parcel_rider/views/Splash/onboarding_one.dart';
import 'package:parcel_rider/resources/utills.dart';

import '../profile/profile.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Background.png'),
          ),
          color: Colors.white),
      child: Center(
        child: Text(
          'Parcel Rider',
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: AppUtils.primarColor),
        ),
      ),
    ));
  }
}
