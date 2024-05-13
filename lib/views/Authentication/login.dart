import 'package:flutter/material.dart';
import 'package:parcel_rider/resources/utills.dart';
import 'package:parcel_rider/views/Home/home_screen.dart';

import '../../custom_widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void showhide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF0F5),
      body: ListView(
        children: [
          const SizedBox(
            height: 150,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 30),
            decoration: BoxDecoration(
              color: Color(0xffFFF0F5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's get you Login",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Enter your information below',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      fillColor: Colors.black,
                      hoverColor: Colors.black,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Email',
                      hintText: 'Enter Your Email',
                      hintStyle: const TextStyle(
                          fontSize: 15, color: Color(0xffBFBFBF)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: _secureText,
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                      hintStyle: const TextStyle(
                          fontSize: 15, color: Color(0xffBFBFBF)),
                      suffixIcon: IconButton(
                        onPressed: showhide,
                        icon: _secureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        color: Color(0xffBFBFBF),
                      ),
                      focusColor: AppUtils.primarColor,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff77207D)),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Button(
                    text1: 'LOGIN',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: 100,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Text('or Login with'),
                      ),
                      Container(
                        height: 1,
                        width: 100,
                        color: Colors.black38,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 56,
                        width: 175,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(color: Colors.black12, width: 2)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // FaIcon(FontAwesomeIcons.google),
                              SizedBox(
                                width: 4,
                              ),
                              Text('Google')
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(width:,),
                      Container(
                        height: 56,
                        width: 175,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(color: Colors.black12, width: 2)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // FaIcon(FontAwesomeIcons.facebook),
                              SizedBox(
                                width: 4,
                              ),
                              Text('Facebook')
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff77207D)),
                            ))
                      ],
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
