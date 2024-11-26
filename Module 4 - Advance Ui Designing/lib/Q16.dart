// Q16. Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView
import 'package:flutter/material.dart';

class Q16 extends StatefulWidget {
  const Q16({super.key});

  @override
  State<Q16> createState() => _Q16State();
}

class _Q16State extends State<Q16> {
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Center(child: Text("Select a City")),
                        actions: [
                          Column(
                            children: [
                              RadioListTile(
                                value: "Mumbai",
                                title: const Text("Mumbai"),
                                groupValue: selectedCity,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCity = value;
                                    Navigator.pop(context);
                                  });
                                },
                              ),
                              RadioListTile(
                                value: "Delhi",
                                title: const Text("Delhi"),
                                groupValue: selectedCity,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCity = value;
                                    Navigator.pop(context);
                                  });
                                },
                              ),
                              RadioListTile(
                                value: "Kolkata",
                                title: const Text("Kolkata"),
                                groupValue: selectedCity,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCity = value;
                                    Navigator.pop(context);
                                  });
                                },
                              ),
                              RadioListTile(
                                value: "Chennai",
                                title: const Text("Chennai"),
                                groupValue: selectedCity,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCity = value;
                                    Navigator.pop(context);
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  );
                },
                child: const Text("Show Dialog")),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Selected City : $selectedCity",
            style: const TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
