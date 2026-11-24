import 'package:flutter/material.dart';

class CallbackDemo extends StatefulWidget {
  const new({super.key});

  @override
  State<CallbackDemo> createState() => _CallbackDemoState();
}

class _CallbackDemoState extends State<CallbackDemo> {

callBack(){
  print("Clicked!!!!");
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:Text("CallBack"),
    ),
    body: ElevatedButton(onPressed: (){
      callBack;
    }, child: Text("Click Me")),
    );
  }
}