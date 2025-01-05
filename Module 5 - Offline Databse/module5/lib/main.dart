import 'package:flutter/material.dart';
import 'package:module5/Screens/AddTask.dart';

void main () {
  runApp(Module5());
}
class Module5 extends StatelessWidget {
  const Module5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddTask(),
    );
  }
}