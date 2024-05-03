import 'package:flutter/material.dart';

import '../resources/utills.dart';

class OnBoardingOneScreen extends StatelessWidget {
  const OnBoardingOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Background.png'),
              ),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_circle_right_sharp,
                      size: 30,
                      color: AppUtils.primarColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Center(
                child: Image.asset('assets/Vector 1.png'),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 6.6,
                  color: Colors.white54),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal :40, vertical :16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(color: Colors.grey)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          blurRadius: 2,
                          spreadRadius: 3,
                          offset: Offset(3, 1))
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                    'Best package delivery \njust for you',
                    textAlign:TextAlign.center ,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color:Colors.black),
                  ),
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content',
                    textAlign:TextAlign.center ,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color:Colors.black),
                  ),
                 
                ]),
              )
            ],
          )),
    );
  }
}
