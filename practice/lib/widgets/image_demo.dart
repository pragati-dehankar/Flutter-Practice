import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Image Demo'),
        backgroundColor: Colors.blue
      ),
      body:Center(
child:Image.network(('https://images.unsplash.com/photo-1682685790910-1e3f5c7b8d4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
width: 300,
height: 300,
fit: BoxFit.cover,
loadingBuilder:(context,child,loadingProgress){
if(loadingProgress==null){
  return child;
}
return const CircularProgressIndicator();
  },
  errorBuilder:(context,error,stackTrace){
     return const Text('Image failed to load');
  },
  ),
      ),
    );
  }
}