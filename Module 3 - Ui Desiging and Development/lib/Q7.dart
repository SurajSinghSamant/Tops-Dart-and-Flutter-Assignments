// // create an application to display Textview when checkbox is checked and hide otherwise
import 'package:flutter/material.dart';

class Q7 extends StatefulWidget {
  const Q7({super.key});

  @override
  State<Q7> createState() => _Q7State();
}

class _Q7State extends State<Q7> {
  String text = "Text";
  bool textview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checbox Question"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            value: textview,
            title: Text("Checkbox"),
            onChanged: (value) {
              setState(() {
                textview = value!;
              });
            },
          ),
          if (textview)
            Padding(
              padding:  EdgeInsets.all(16.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
            ),
        ],
      ),
    );
  }
}
