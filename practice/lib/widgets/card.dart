import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CardDemo"),
      ),
      body:Center(
        child: Card(
          shadowColor: Colors.pinkAccent,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hello',style: TextStyle(fontSize: 25),),
          ),
        ),
      ),
      );
  }
}
