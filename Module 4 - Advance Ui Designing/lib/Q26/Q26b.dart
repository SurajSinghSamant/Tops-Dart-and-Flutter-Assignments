import 'package:flutter/material.dart';

class Q26b extends StatefulWidget {
  const Q26b({super.key});

  @override
  State<Q26b> createState() => _Q26bState();
}

class _Q26bState extends State<Q26b> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Text("This is the second page"),
      ),
    );
  }
}
