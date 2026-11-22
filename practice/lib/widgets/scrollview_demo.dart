import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:SingleChildScrollView(
          child: Column(
            children:[
              SingleChildScrollView(

              scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom:11),
                      height:200,
                      width:200,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom:11),
                      height:200,
                      width:200,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom:11),
                      height:200,
                      width:200,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom:11),
                      height:200,
                      width:200,
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom:11),
                height:200,
                width:200,
                color: Colors.orange,
              ),
              Container(
                margin: const EdgeInsets.only(bottom:11),
                height:200,
                width:200,
                color: Colors.blue,
              ),
              Container(
                margin: const EdgeInsets.only(bottom:11),
                height:200,
                width:200,
                color: Colors.grey,
              ),
             
              Container(
                margin: const EdgeInsets.only(bottom:11),
                height:200,
                width:200,
                color: Colors.lightGreen,
              ),
              Container(
                margin: const EdgeInsets.only(bottom:11),
                height:200,
                width:200,
                color: Colors.orange,
              ),
              Container(
                margin: const EdgeInsets.only(bottom:11),
                height:200,
                width:200,
                color: Colors.blue,
              ),
              Container(
                margin: const EdgeInsets.only(bottom:11),
                height:200,
                width:200,
                color: Colors.grey,
              ),
             
            ]
          ),
        ),
      ),
    );
  }
}