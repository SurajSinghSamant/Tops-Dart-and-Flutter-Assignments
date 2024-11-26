// Q26. Write a code to redirect user from one activity to another when button click.

import 'package:assignment4/Q26/Q26b.dart';
import 'package:flutter/material.dart';

class Q26 extends StatefulWidget {
  const Q26({super.key});

  @override
  State<Q26> createState() => _Q26State();
}

class _Q26State extends State<Q26> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Q26b()));
            },
            child: Text("Go to next page")),
      ),
    );
  }
}
