
import 'package:flutter/material.dart';

class InkWellDemo extends StatefulWidget {
  const InkWellDemo({super.key});

  @override
  State<InkWellDemo> createState() => _InkWellDemoState();
}

class _InkWellDemoState extends State<InkWellDemo> {

  String message = 'Tap any card!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell Widget'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // 1. Basic InkWell
            InkWell(
              onTap: () {
                setState(() {
                  message = 'Container tapped!';
                });
              },
              child: Container(
                width: 250,
                height: 80,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Tap Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // 2. Double Tap
            InkWell(
              onDoubleTap: () {
                setState(() {
                  message = 'Double tapped!';
                });
              },
              child: Container(
                width: 250,
                height: 80,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Double Tap Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // 3. Long Press
            InkWell(
              onLongPress: () {
                setState(() {
                  message = 'Long pressed!';
                });
              },
              child: Container(
                width: 250,
                height: 80,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    'Long Press Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Display Message
            Text(
              message,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
