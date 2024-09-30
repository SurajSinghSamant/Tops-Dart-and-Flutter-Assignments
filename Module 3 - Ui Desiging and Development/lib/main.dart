
import 'package:assignment3/Q1(a).dart';
import 'package:assignment3/Q1(b).dart';
import 'package:assignment3/Q10.dart';
import 'package:assignment3/Q11/Home.dart';
import 'package:assignment3/Q12(a).dart';
import 'package:assignment3/Q12(b).dart';
import 'package:assignment3/Q2.dart';
import 'package:assignment3/Q3.dart';
import 'package:assignment3/Q4.dart';
import 'package:assignment3/Q5.dart';
import 'package:assignment3/Q6.dart';
import 'package:assignment3/Q7.dart';
import 'package:assignment3/Q8.dart';
import 'package:assignment3/Q9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Assignment());
}

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q12b(),
    );
  }
}