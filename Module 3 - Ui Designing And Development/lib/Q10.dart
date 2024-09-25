/* Write a program you have taken three seek bar controls. From three
Seekbar which Seekbar value changed the background color of device
will be changed. */

import 'package:flutter/material.dart';

class Q10 extends StatefulWidget {
  @override
  _Q10State createState() => _Q10State();
}

class _Q10State extends State<Q10> {
  double redValue = 0;
  double greenValue = 0;
  double blueValue = 0;

  Color getBackgroundColor() {
    return Color.fromRGBO(
      redValue.toInt(),
      greenValue.toInt(),
      blueValue.toInt(),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Background Color'),
      ),
      body: Container(
        color: getBackgroundColor(),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Red: ${redValue.toInt()}',
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: redValue,
              min: 0,
              max: 255,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  redValue = value;
                });
              },
            ),
            Text(
              'Green: ${greenValue.toInt()}',
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: greenValue,
              min: 0,
              max: 255,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  greenValue = value;
                });
              },
            ),
            Text(
              'Blue: ${blueValue.toInt()}',
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: blueValue,
              min: 0,
              max: 255,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  blueValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
