// Q15. Write a code to display alert dialog with positive, negative and neutral button and display toast respectively user's choice
import 'package:flutter/material.dart';

class Q15 extends StatelessWidget {
  const Q15({super.key});

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
                    title: const Center(child: Text("Alert Dialog with Buttons ")),
                    content: const Text(
                        "Press the below buttons to give us your reviews : "),
                    actions: [
                      Center(
                        child: Column(
                          children: [
                            TextButton.icon(
                                icon: const Icon(Icons.thumb_up_alt_outlined),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text(
                                              "You have given positive review")));
                                },
                                label: const Text("Positive")),
                            TextButton.icon(
                                icon: const Icon(Icons.thumbs_up_down_outlined),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text(
                                              "You have given neutral review")));
                                },
                                label: const Text("Neutral")),
                            TextButton.icon(
                                icon: const Icon(Icons.thumb_down_alt_outlined),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text(
                                              "You have given negative review")));
                                },
                                label: const Text("Negative")),
                          ],
                        ),
                      ),
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close,color: Colors.red,))
                    ],
                  );
                },
              );
            },
            child: const Text("Show Alert Dialog")),
      ),
    );
  }
}
