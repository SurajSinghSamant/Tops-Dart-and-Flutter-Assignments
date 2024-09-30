/*Create an application to take input number from user and print its
reverse number in TextField */

import 'package:flutter/material.dart';

class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  TextEditingController numcontroller = TextEditingController();

  String reverse = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Taking Input And Prints Its Reverse"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: numcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter the Numbers",
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  reverse = numcontroller.text.split('').reversed.join();
                  numcontroller.clear();
                });
              },
              child: Text("Submit")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              readOnly: true,
              controller: TextEditingController(text: reverse),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Reversed Number Will Print Here",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
