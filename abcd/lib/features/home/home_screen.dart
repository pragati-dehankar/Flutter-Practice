
import 'package:flutter/material.dart';
import '../settings/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // SAMPLE DATA
  final List<String> subjects = const [
    'Flutter',
    'Dart',
    'Python',
    'Java',
    'Database',
    'Data Structures',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TEXT WIDGET
            const Text(
              'My Subjects',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // LISTVIEW BUILDER
            Expanded(
              child: ListView.builder(
                itemCount: subjects.length,

                itemBuilder: (context, index) {

                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.only(bottom: 12),

                    child: ListTile(

                      // LEADING ICON
                      leading: const CircleAvatar(
                        child: Icon(Icons.book),
                      ),

                      // TITLE
                      title: Text(subjects[index]),

                      // SUBTITLE
                      subtitle: Text(
                        'Learn ${subjects[index]}',
                      ),

                      // TRAILING ICON
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),

                      // ON TAP
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'You selected ${subjects[index]}',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // NAVIGATION BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );

                },

                child: const Text('Open Settings'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
