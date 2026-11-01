
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
    late int data;
  // int data = 0;

@override
  void initState() {
    super.initState();
    data = 0;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            data++;
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Settings Screen'),
        elevation: 1,
      ),
      body: Center(
        child: Text(
          data.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
