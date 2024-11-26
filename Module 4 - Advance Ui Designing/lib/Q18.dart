// Q18. Write a code to select Date on button's click event

import 'package:flutter/material.dart';

class Q18 extends StatefulWidget {
  const Q18({super.key});

  @override
  State<Q18> createState() => _Q18State();
}

class _Q18State extends State<Q18> {
  String? selectedDate ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Date Picker")),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDatePicker(context: context,
         initialDate: DateTime.now(),
         firstDate: DateTime(2000),
         lastDate: DateTime(2050),
          );
        }, child: Text("Select a date")),
      ),
    );
  }
}
