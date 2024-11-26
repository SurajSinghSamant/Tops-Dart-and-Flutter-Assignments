// Q25. Write a code to display Q25 Screen using Activity

import 'dart:async';

import 'package:assignment4/Q22/Gallery.dart';
import 'package:flutter/material.dart';

class Q25 extends StatefulWidget {
  const Q25({super.key});

  @override
  State<Q25> createState() => _Q25State();
}

class _Q25State extends State<Q25> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Gallery()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Splash Screen")),
    );
  }
}
