import 'package:flutter/material.dart';
import 'package:parcel_rider/resources/utills.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              icon: Icon(
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
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 15),
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
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
                              child: Center(
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.donut_large_sharp, size: 30, color: AppUtils.codePurple400,),
                      SizedBox(width: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width-80,
                        height: 60,
                        child: 
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Pick up Location',

                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                          ),
                        )
                     ),
                    ],
                  ),
                SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_outlined, size: 30, color: AppUtils.codePurple400,),
                      SizedBox(width: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width-80,
                        height: 60,
                        child: 
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Drop off Location',

                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                          ),
                        )
                     ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                    
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black,),
                            // color: AppUtils.primarColor
                          ),
                          child: Center(
                            child: Text('Clear'),
                          ),
                        ),
                        SizedBox(width: 10,),
                         Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black,),
                            color: AppUtils.primarColor
                          ),
                          child: Center(
                            child: Text('Find', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  )
                
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
