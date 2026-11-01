
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  // VARIABLE
  int data = 0;

  // INITIALIZATION
  @override
  void initState() {
    super.initState();
    data = 0;
    print('Settings Screen Initialized');
  }

  // INCREMENT FUNCTION
  void increment() {
    setState(() {
      data++;
    });
  }

  // DECREMENT FUNCTION
  void decrement() {
    setState(() {
      if (data > 0) {
        data--;
      }
    });
  }

  // DISPOSE
  @override
  void dispose() {
    print('Settings Screen Closed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Settings Screen'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // TEXT WIDGET
              const Text(
                'Counter Example',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // DISPLAY COUNTER
              Text(
                data.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 25),

              // ROW WITH TWO BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // DECREMENT BUTTON
                  ElevatedButton(
                    onPressed: decrement,
                    child: const Icon(Icons.remove),
                  ),

                  const SizedBox(width: 20),

                  // INCREMENT BUTTON
                  ElevatedButton(
                    onPressed: increment,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // TEXTFIELD WIDGET
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  hintText: 'Example: Pragati',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25),

              // NAVIGATION POP
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },

                icon: const Icon(Icons.arrow_back),
                label: const Text('Go Back'),
              ),
            ],
          ),
        ),
      ),

      // FLOATING ACTION BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
