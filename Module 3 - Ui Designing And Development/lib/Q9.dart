/* Write a program in android display screen color which the Color will be
select from the radio button. */

import 'package:flutter/material.dart';

class Q9 extends StatefulWidget {
  const Q9({super.key});

  @override
  State<Q9> createState() => _Q9State();
}

class _Q9State extends State<Q9> {
  Color bgcolor = Colors.white;
  String? shade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Radio Color Buttons",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: bgcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            RadioListTile(
                value: "Yellow",
                groupValue: shade,
                title: Text("Yellow"),
                tileColor: Colors.grey.shade100,
                onChanged: (value) {
                  setState(() {
                    shade = value;
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
                    shade = value;
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
                    shade = value;
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
                    shade = value;
                    bgcolor = Colors.blue.shade900;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
