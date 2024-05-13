import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:parcel_rider/views/Home/home_screen.dart';
import '../../resources/utills.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: MediaQuery.of(context).size.height / 3.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Profile bg.png'),
                      fit: BoxFit.cover),
                  border: const Border(bottom: BorderSide(color: Colors.grey)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: Offset(3, 1))
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/rider_image.png'),
                    )
                  ])),
                  Text('Umair Arshad', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
                  Text('UmairArshad@gmail.com', style: TextStyle(color: Colors.black54, fontSize: 16),),
                  SizedBox(height: 20,),
                  Card(
                    child:Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        Text('My Orders'),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),)
                  )
        ]),
      ),
    );
  }
}
