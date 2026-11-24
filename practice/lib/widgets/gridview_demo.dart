
import 'package:flutter/material.dart';

class GridviewDemo extends StatelessWidget {
  const GridviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.teal,
      Colors.yellow,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("GridviewDemo"),
      ),

      body: Column(
        children: [

          // 1. GridView.count
          Container(
            height: 200,
            child: GridView.count(
              crossAxisCount: 6,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(color: Colors.red),
                Container(color: Colors.pink),
                Container(color: Colors.brown),
                Container(color: Colors.yellow),
                Container(color: Colors.green),
                Container(color: Colors.blue),
                Container(color: Colors.black),
                Container(color: Colors.deepPurple),
                Container(color: Colors.pinkAccent),
                Container(color: Colors.purpleAccent),
                Container(color: Colors.deepOrange),
                Container(color: Colors.cyan),
              ],
            ),
          ),

          SizedBox(height: 20),

          // 2. GridView.extent
          Container(
            height: 200,
            child: GridView.extent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
              children: [
                Container(color: Colors.red),
                Container(color: Colors.pink),
                Container(color: Colors.brown),
                Container(color: Colors.yellow),
                Container(color: Colors.green),
                Container(color: Colors.blue),
                Container(color: Colors.black),
                Container(color: Colors.deepPurple),
                Container(color: Colors.pinkAccent),
                Container(color: Colors.purpleAccent),
                Container(color: Colors.deepOrange),
                Container(color: Colors.cyan),
              ],
            ),
          ),

          SizedBox(height: 20),

          // 3. GridView.builder
          Expanded(
            child: GridView.builder(
              itemCount: arrColors.length,

              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),

              itemBuilder: (context, index) {
                return Container(
                  color: arrColors[index],
                  child: Center(
                    child: Text(
                      "Item ${index + 1}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
