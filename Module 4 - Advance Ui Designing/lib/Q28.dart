// Q28. Create an Application to take input two numbers from users and when user press button then display sum of those values of next Activity.

import 'package:flutter/material.dart';

class Q28 extends StatefulWidget {
  const Q28({super.key});

  @override
  State<Q28> createState() => _Q28State();
}

class _Q28State extends State<Q28> {
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();

  int? result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _number1Controller,
              decoration: InputDecoration(hintText: "Enter number 1 : "),
            ),
            TextField(
              controller: _number2Controller,
              decoration: InputDecoration(hintText: "Enter number 2 : "),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = int.parse(_number1Controller.text.toString()) +
                        int.parse(_number2Controller.text.toString());
                  });
                },
                child: Text("ADD")),
            Text(
              "Result = $result",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
