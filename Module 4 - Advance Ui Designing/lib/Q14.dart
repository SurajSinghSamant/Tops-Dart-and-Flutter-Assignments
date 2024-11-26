// 14. Write a code to display simple alert dialog with title, description and icon when button is clicked

import 'package:flutter/material.dart';

class Q14 extends StatelessWidget {
  const Q14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Center(child: Text("Simple Alert Dialog Box")),
                    content: const Text(
                        "This is a sample description of the simple alert dialog box"),
                    actions: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.red,
                          ))
                    ],
                  );
                },
              );
            },
            child: const Text("Show Alert Dialog Box")),
      ),
    );
  }
}
