import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const new({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('ListView Demo'),
      ),
      body:Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          reverse: false,
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('One',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Two',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Three',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Four',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Five',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}