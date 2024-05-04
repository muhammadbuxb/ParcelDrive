import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text1;
  final Function() onTap;
  const Button({super.key, required this.text1, required this.onTap});
  
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap:widget.onTap,
      child: Container(
        width: 380,
        height: 63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xff77207D),
        ),
        child: Center(child: Text(widget.text1, style: TextStyle(fontSize: 16, color: Colors.white),)),
      ),
    );
  }
}
