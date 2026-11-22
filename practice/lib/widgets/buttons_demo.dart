
import 'package:flutter/material.dart';

class ButtonsDemo extends StatefulWidget {
  const ButtonsDemo({super.key});

  @override
  State<ButtonsDemo> createState() => _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {
  String message = 'Click any button!';

  String selectedValue = 'Flutter';

  Set<String> selectedOptions = {'One'};

  void showMessage(String text) {
    setState(() {
      message = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Buttons'),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // 1. Elevated Button
            const Text(
              '1. Elevated Button',
              style: TextStyle(fontSize: 18),
            ),

            ElevatedButton(
              onPressed: () {
                showMessage('Elevated Button Clicked!');
              },
              child: const Text('Click Me'),
            ),

            const SizedBox(height: 20),

            // 2. Text Button
            const Text(
              '2. Text Button',
              style: TextStyle(fontSize: 18),
            ),

            TextButton(
              onPressed: () {
                showMessage('Text Button Clicked!');
              },
              child: const Text('Click Me'),
            ),

            const SizedBox(height: 20),

            // 3. Outlined Button
            const Text(
              '3. Outlined Button',
              style: TextStyle(fontSize: 18),
            ),

            OutlinedButton(
              onPressed: () {
                showMessage('Outlined Button Clicked!');
              },
              child: const Text('Click Me'),
            ),

            const SizedBox(height: 20),

            // 4. Icon Button
            const Text(
              '4. Icon Button',
              style: TextStyle(fontSize: 18),
            ),

            IconButton(
              onPressed: () {
                showMessage('Favorite Icon Clicked!');
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
            ),

            const SizedBox(height: 20),

            // 5. Floating Action Button
            const Text(
              '5. Floating Action Button',
              style: TextStyle(fontSize: 18),
            ),

            FloatingActionButton(
              heroTag: 'demoFab',
              onPressed: () {
                showMessage('FAB Clicked!');
              },
              child: const Icon(Icons.add),
            ),

            const SizedBox(height: 20),

            // 6. Popup Menu Button
            const Text(
              '6. Popup Menu Button',
              style: TextStyle(fontSize: 18),
            ),

            PopupMenuButton<String>(
              onSelected: (value) {
                showMessage('Selected: $value');
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'Edit',
                  child: Text('Edit'),
                ),
                const PopupMenuItem(
                  value: 'Delete',
                  child: Text('Delete'),
                ),
              ],
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Open Menu'),
              ),
            ),

            const SizedBox(height: 20),

            // 7. Dropdown Button
            const Text(
              '7. Dropdown Button',
              style: TextStyle(fontSize: 18),
            ),

            DropdownButton<String>(
              value: selectedValue,
              items: ['Flutter', 'Dart', 'Java']
                  .map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedValue = value;
                    message = 'Selected: $value';
                  });
                }
              },
            ),

            const SizedBox(height: 20),

            // 8. Segmented Button
            const Text(
              '8. Segmented Button',
              style: TextStyle(fontSize: 18),
            ),

            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'One',
                  label: Text('One'),
                ),
                ButtonSegment(
                  value: 'Two',
                  label: Text('Two'),
                ),
                ButtonSegment(
                  value: 'Three',
                  label: Text('Three'),
                ),
              ],
              selected: selectedOptions,
              onSelectionChanged: (value) {
                setState(() {
                  selectedOptions = value;
                  message = 'Selected: ${value.first}';
                });
              },
            ),

            const SizedBox(height: 20),

            // 9. Toggle Buttons (Legacy)
            const Text(
              '9. Toggle Buttons',
              style: TextStyle(fontSize: 18),
            ),

            Wrap(
              spacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () => showMessage('Option A selected'),
                  child: const Text('Option A'),
                ),
                ElevatedButton(
                  onPressed: () => showMessage('Option B selected'),
                  child: const Text('Option B'),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Display Message
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
