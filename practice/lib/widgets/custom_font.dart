import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("customFont"),
      ),
      body: Center(
        child: Text(
          "Hello World",style: TextStyle(fontFamily: "font1",fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}