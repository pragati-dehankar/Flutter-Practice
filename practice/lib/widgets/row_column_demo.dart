
import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column'),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              // ROW EXAMPLE
              const Text(
                'Row Widget',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                    child: const Center(child: Text('One')),
                  ),

                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                    child: const Center(child: Text('Two')),
                  ),

                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.orange,
                    child: const Center(child: Text('Three')),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // COLUMN EXAMPLE
              const Text(
                'Column Widget',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Column(
                children: [
                  Container(
                    width: 200,
                    height: 70,
                    color: Colors.blue,
                    child: const Center(child: Text('One')),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    width: 200,
                    height: 70,
                    color: Colors.purple,
                    child: const Center(child: Text('Two')),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    width: 200,
                    height: 70,
                    color: Colors.teal,
                    child: const Center(child: Text('Three')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
