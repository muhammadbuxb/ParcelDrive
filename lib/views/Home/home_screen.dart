import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:parcel_rider/resources/utills.dart';
import 'package:parcel_rider/views/profile/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: CircleAvatar(
            child: Center(
              child: Image.asset('assets/profile.png'),
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 5, top: 5),
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'JohnSon David',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'johnsondavid@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                )
              ]),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_add,
                size: 30,
              ))
        ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: const Border(bottom: BorderSide(color: Colors.grey)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        blurRadius: 2,
                        spreadRadius: 3,
                        offset: Offset(3, 1))
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, right: 15),
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Pick',
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                              width: 75,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppUtils.primarColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                  child: Text(
                                'Send',
                                style: TextStyle(color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.donut_large_sharp,
                        size: 30,
                        color: AppUtils.codePurple400,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width - 80,
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Pick up Location',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 30,
                        color: AppUtils.codePurple400,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width - 80,
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Drop off Location',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            // color: AppUtils.primarColor
                          ),
                          child: const Center(
                            child: Text('Clear'),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                              ),
                              color: AppUtils.primarColor),
                          child: const Center(
                            child: Text(
                              'Find',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Center Screen of Inter City
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Trips in City',
                    style: TextStyle(
                      fontSize: 22,
                      color: AppUtils.primarColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppUtils.primarColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 330,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 300,
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset.fromDirection(40, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 270,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/rider_image.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'Bike',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppUtils.primarColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.open_in_new_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('from - Saddar'),
                                const Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.local_shipping_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('To - Auto Bhan'),
                                Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Capacity - 10KG',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Spacer(),
                                Text(
                                  'RS 8000 /-',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppUtils.primarColor),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 270,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset.fromDirection(40, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 270,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/rider_image.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'Bike',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppUtils.primarColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.open_in_new_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('from - Saddar'),
                                const Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.local_shipping_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('To - Auto Bhan'),
                                Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Capacity - 10KG',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Spacer(),
                                Text(
                                  'RS 8000 /-',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppUtils.primarColor),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 270,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                              spreadRadius: 3,
                              offset: Offset.fromDirection(40, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 270,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/rider_image.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'Bike',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppUtils.primarColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.open_in_new_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('from - Saddar'),
                                const Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.local_shipping_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('To - Auto Bhan'),
                                Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Capacity - 10KG',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Spacer(),
                                Text(
                                  'RS 8000 /-',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppUtils.primarColor),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Center Screen of Inter City
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Trips City to City',
                    style: TextStyle(
                      fontSize: 22,
                      color: AppUtils.primarColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppUtils.primarColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 330,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 300,
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset.fromDirection(40, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 270,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/rider_image.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'Bike',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppUtils.primarColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.open_in_new_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('from - Saddar'),
                                const Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.local_shipping_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('To - Auto Bhan'),
                                Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Capacity - 10KG',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Spacer(),
                                Text(
                                  'RS 8000 /-',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppUtils.primarColor),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 270,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset.fromDirection(40, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 270,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/rider_image.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'Bike',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppUtils.primarColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.open_in_new_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('from - Saddar'),
                                const Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.local_shipping_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('To - Auto Bhan'),
                                Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Capacity - 10KG',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Spacer(),
                                Text(
                                  'RS 8000 /-',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppUtils.primarColor),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 270,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                              spreadRadius: 3,
                              offset: Offset.fromDirection(40, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 270,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/rider_image.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'Bike',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppUtils.primarColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.open_in_new_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('from - Saddar'),
                                const Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.local_shipping_rounded,
                                    color: AppUtils.codePurple400),
                                const Text('To - Auto Bhan'),
                                Spacer(),
                                const Text('09 - May'),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Capacity - 10KG',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Spacer(),
                                Text(
                                  'RS 8000 /-',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppUtils.primarColor),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
