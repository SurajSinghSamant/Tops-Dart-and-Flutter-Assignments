//Write a program to show four images around Textview.
import 'package:flutter/material.dart';

class Q8 extends StatelessWidget {
  const Q8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images around textview"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/pasta.jpeg"),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/pasta.jpeg",
              )
            ],
          ),
          Text("Text"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/pasta.jpeg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/images/pasta.jpeg")
            ],
          )
        ],
      ),
    );
  }
}
