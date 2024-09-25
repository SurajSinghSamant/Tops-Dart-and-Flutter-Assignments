/*Create an application to input 2 numbers from user and all numbers
between those 2 numbers in next activity*/

import 'package:flutter/material.dart';

class Q3 extends StatefulWidget {
  const Q3({super.key});

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();

  List<int> numList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number Range"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: startController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter the Starting Number"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: endController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter the Ending Number"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int start = int.parse(startController.text);
                      int end = int.parse(endController.text);

                      if (start != null && end != null) {
                        for (int i = start; i <= end; i++) {
                          numList.add(i);
                        }
                      }
                    });
                    startController.clear();
                    endController.clear();
                  },
                  child: Text("Submit")),
              ElevatedButton(
                  onPressed: () {
                    numList.clear();
                  },
                  child: Text("Clear"))
            ],
          ),
          Text(
            "Numbers : ${numList.join(',')}",
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
