import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const new({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    var names = ["Ram", "Shyam", "Hari", "Gita", "Sita", "Raman"];

    return Scaffold(
      appBar: AppBar(title: const Text('ListView Demo')),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  names[index],
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  names[index],
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  names[index],
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
        itemCount: names.length,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) {
          return Divider(height: 100, thickness: 2);
        },
      ),
    );
  }
}
