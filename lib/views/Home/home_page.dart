import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:parcel_rider/resources/utills.dart';
import 'package:parcel_rider/views/Home/add_parcel.dart';
import 'package:parcel_rider/views/Home/home_screen.dart';
import 'package:parcel_rider/views/profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _bottomNavIndex = 0;
  
  List<Widget> _pages = [
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      floatingActionButton: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> AddParcelScreen() ));
        },
        child: CircleAvatar(
          backgroundColor: AppUtils.primarColor,
          radius: 30,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: 2, // Number of icons
        tabBuilder: (int index, bool isActive) {
          // Icon list for home and profile
          List<IconData> iconList = [
            Icons.home, // Home Icon
            Icons.person, // Profile Icon
          ];
          return IconButton(
            icon: Icon(
              iconList[index],
              size: 24,
              color: isActive
                  ? AppUtils.primarColor
                  : Colors.black, // Customize active and inactive colors
            ),
            onPressed: () {
              setState(() {
                _bottomNavIndex = index; // Set the selected index
              });
            },
          );
        },
        backgroundColor: AppUtils.codePurpl100,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
      body: _pages[_bottomNavIndex],
    );
  }
}
