
import 'package:flutter/material.dart';

class TextfieldDemo extends StatefulWidget {
  const TextfieldDemo({super.key});

  @override
  State<TextfieldDemo> createState() => _TextfieldDemoState();
}

class _TextfieldDemoState extends State<TextfieldDemo> {

  var emailText = TextEditingController();

  @override
  void dispose() {
    emailText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Demo"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.name,
                controller: emailText,
                enabled: false,
                decoration: InputDecoration(
                  hintText: "Enter your name",

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.pink,
                      width: 2,
                    ),
                  ),

                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 2,
                    ),
                  ),

                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.access_alarms_outlined),
                  ),

                  prefixIcon: Icon(Icons.abc_outlined),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),

              SizedBox(height: 11),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
