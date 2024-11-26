/* Q30. Write a program to add name from the text view and insert into the
listview. If you click on the listview then name should be show in the
dialog box. When user press for 2 seconds on particular List item then
open Context Menu (Delete Item, Edit Item, Exit). If user click on
Delete Item then Open one Alert Dialog with message (“Are you sure
want to delete Item?”) and yes, no button if user press yes button then
remove item from list. (Click a DELETE button, it gives a confirm box)
If user click on Edit item then selected item display on EditText and
again user click on button then this (updated item) should be replace
with old item */

// Q30. Write a code to display edit, view, delete options with context menu in listview and also perform respective operation on user's choice

import 'package:flutter/material.dart';

class Q30 extends StatefulWidget {
  const Q30({super.key});

  @override
  State<Q30> createState() => _Q30State();
}

class _Q30State extends State<Q30> {
  List<String> fruitList = [];
  TextEditingController _fruitController = TextEditingController();
  int? editIndex;

  void displayAlert(String msg) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(msg),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("ListView with Context Menu")),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _fruitController,
                decoration: InputDecoration(
                  hintText: "Enter fruit name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_fruitController.text.trim().isEmpty) {
                  displayAlert("Please enter a valid name.");
                  return;
                }
                setState(() {
                  if (editIndex == null) {
                    fruitList.add(_fruitController.text.trim());
                  } else {
                    fruitList[editIndex!] = _fruitController.text.trim();
                    editIndex = null;
                  }
                  _fruitController.clear();
                });
              },
              child: Text(editIndex == null ? "Submit" : "Update"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: fruitList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        tileColor: Colors.cyan,
                        title: Text(fruitList[index]),
                        onTap: () {
                          displayAlert(fruitList[index]);
                        },
                        onLongPress: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Context Menu"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      leading: const Icon(Icons.edit),
                                      title: const Text("Edit"),
                                      onTap: () {
                                        setState(() {
                                          _fruitController.text =
                                              fruitList[index];
                                          editIndex = index;
                                        });
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.delete),
                                      title: const Text("Delete"),
                                      onTap: () {
                                        Navigator.pop(context);
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title:
                                                  const Text("Confirm Delete"),
                                              content: const Text(
                                                  "Are you sure you want to delete this item?"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      fruitList.removeAt(index);
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text("Yes"),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                  child: const Text("No"),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.exit_to_app),
                                      title: const Text("Exit"),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
