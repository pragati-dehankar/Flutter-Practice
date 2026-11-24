
import 'package:flutter/material.dart';

class DateTimeDemo extends StatefulWidget {
  const DateTimeDemo({super.key});

  @override
  State<DateTimeDemo> createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {

  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),

      body: Center(
        child: Container(
          width: 250,
          height: 200,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'Current time: ${time.hour}:${time.minute}',
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 15),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    time = DateTime.now();
                  });
                },
                child: Text('Current time'),
              )

            ],
          ),
        ),
      ),
    );
  }
}
