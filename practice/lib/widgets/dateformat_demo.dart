import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DatefromatDemo extends StatefulWidget {
  const DatefromatDemo({super.key});

  @override
  State<DatefromatDemo> createState() => _DatefromatDemoState();
}

class _DatefromatDemoState extends State<DatefromatDemo> {

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
                'Current time: ${DateFormat('yMMMd').format(time)}',
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
