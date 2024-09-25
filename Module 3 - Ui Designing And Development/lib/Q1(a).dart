import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250,
            width: 450,
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white), color: Colors.red),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 250,
              width: 208,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Container(
              height: 250,
              width: 208,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 250,
              width: 208,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 250,
              width: 208,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 145,
              width: 135,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.white)),
            ),
            Container(
              height: 145,
              width: 135,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.white)),
            ),
            Container(
              height: 145,
              width: 135,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.white)),
            )
          ],
        )
      ],
    ));
  }
}
