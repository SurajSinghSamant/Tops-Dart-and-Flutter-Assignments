// create an application to change background when button is clicked

import 'package:flutter/material.dart';

class Q5 extends StatefulWidget {
  const Q5({super.key});

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  Color bgcolor = Colors.white;
  String? shade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text(
          "Radio Color Buttons",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: [
          RadioListTile(
              value: "Yellow",
              groupValue: shade,
              title: Text("Yellow"),
              tileColor: Colors.grey.shade100,
              onChanged: (value) {
                setState(() {
                  bgcolor = Colors.yellow;
                });
              }),
          RadioListTile(
              value: "Teal",
              groupValue: shade,
              title: Text("Teal"),
              tileColor: Colors.grey.shade200,
              onChanged: (value) {
                setState(() {
                  bgcolor = Colors.teal;
                });
              }),
          RadioListTile(
              value: "Orange",
              groupValue: shade,
              title: Text("Orange"),
              tileColor: Colors.grey.shade300,
              onChanged: (value) {
                setState(() {
                  bgcolor = Colors.orange;
                });
              }),
          RadioListTile(
              value: "Navy Blue",
              groupValue: shade,
              title: Text("Navy Blue"),
              tileColor: Colors.grey,
              onChanged: (value) {
                setState(() {
                  bgcolor = Colors.blue.shade900;
                });
              }),
        ],
      ),
    );
  }
}
