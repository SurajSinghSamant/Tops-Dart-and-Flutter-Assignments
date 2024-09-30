/*  Create an application with radio buttons (Add, Substraction,
Multiply, Division) EditText (number1, number2) and print result as
per user choice from radio button in TextView */
import 'package:flutter/material.dart';

class Q4 extends StatefulWidget {
  const Q4({super.key});

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  num? result = 0;
  num? operations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: num1controller,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter Number 1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: num2controller,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Number 2",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  num1controller.clear();
                  num2controller.clear();
                },
                child: Text("Clear")),
          ),
          RadioListTile(
            value: "Add",
            title: Text("Add"),
            groupValue: operations,
            onChanged: (value) {
              setState(() {
                result = int.parse(num1controller.text.toString()) +
                    int.parse(num2controller.text.toString());
              });
            },
          ),
          RadioListTile(
            value: "Subtract",
            title: Text("Subtract"),
            groupValue: operations,
            onChanged: (value) {
              setState(() {
                result = int.parse(num1controller.text.toString()) -
                    int.parse(num2controller.text.toString());
              });
            },
          ),
          RadioListTile(
            value: "Multiply",
            title: Text("Multiply"),
            groupValue: operations,
            onChanged: (value) {
              setState(() {
                result = int.parse(num1controller.text.toString()) *
                    int.parse(num2controller.text.toString());
              });
            },
          ),
          RadioListTile(
            value: "Divide",
            title: Text("Divide"),
            groupValue: operations,
            onChanged: (value) {
              setState(() {
                result = int.parse(num1controller.text.toString()) /
                    int.parse(num2controller.text.toString());
              });
            },
          ),
          Text("Result ---> ${result}")
        ],
      ),
    );
  }
}
