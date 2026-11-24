
import 'package:flutter/material.dart';

class CircleDemo extends StatelessWidget {
  const CircleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle avatar Widget'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child:CircleAvatar(
            backgroundColor: Colors.pinkAccent,
            maxRadius: 50,
            child:Container(
                width:50,
                height:50,
                child:Column(
                    children:[
                       Container( width:30,
                        height:30,
                        child:Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
                       ),
                        Text('name'),
                    ],
                ),
            ),
        ),
      ),
    );
  }
}
