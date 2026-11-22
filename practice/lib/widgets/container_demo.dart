
import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
          child: const Center(
            child: Text(
              'Hello Flutter!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
