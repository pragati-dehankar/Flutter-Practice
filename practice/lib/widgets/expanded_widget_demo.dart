import 'package:flutter/material.dart';

class ExpandedWidgetDemo extends StatelessWidget {
  const ExpandedWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget Demo'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Expanded(
            flex: 2,
            child: Container(
              width:50,
              height:100,
              color: Colors.pink,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width:50,
              height:100,
              color:Colors.green,
            ),
          ),
          Expanded(
            flex:4,
            child: Container(
              width:50,
              height:100,
              color:Colors.blue
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width:50,
              height:100,
              color:Colors.yellow,
            ),
          ),
        ]
      ),
    );
  }
}