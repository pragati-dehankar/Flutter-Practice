import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const new({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {

var names=["Ram","Shyam","Hari","Gita","Sita","Raman"];

    return Scaffold(
      appBar:AppBar(
        title: const Text('ListView Demo'),
      ),
      body:ListView.builder(
        itemBuilder:(context,index){
          return Text(names[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),);
        },
        itemCount: names.length,
        itemExtent: 100,
        scrollDirection: Axis.vertical,
      )
        
      
    );
  }
}