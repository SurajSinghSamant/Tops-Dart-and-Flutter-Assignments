// Q20. Write a code to display edit, view, delete options with context menu in listview and also perform respective operation on user's choice

import 'package:flutter/material.dart';

class Q20 extends StatefulWidget {
  const Q20({super.key});

  @override
  State<Q20> createState() => _Q20State();
}

class _Q20State extends State<Q20> {
  List<String> fruitList = [];
  TextEditingController _fruitcontroller = TextEditingController();
  int? editIndex = -1;

  void displayAlert(String msg) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("$msg"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _fruitcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            editIndex == -1
                ? ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fruitList.add(_fruitcontroller.text.toString());
                        print("----------> ${fruitList}");
                        _fruitcontroller.clear();
                      });
                    },
                    child: Text("submit"))
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fruitList[editIndex!] =
                            _fruitcontroller.text.toString();
                        editIndex = -1;
                        _fruitcontroller.clear();
                      });
                    },
                    child: Text("Update")),
            ListView.builder(
              itemCount: fruitList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${fruitList[index]} deleted")));
                      fruitList.clear();
                    },
                    child: GestureDetector(
                      onTap: () {
                        displayAlert(fruitList[index]);
                      },
                      child: ListTile(
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.cyan,
                        title: Text("${fruitList[index]}"),
                        trailing: Wrap(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _fruitcontroller.text = fruitList[index];
                                  editIndex = index;
                                });
                              },
                              icon: Icon(Icons.edit),
                              color: Colors.black,
                            ),
                            
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  fruitList.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete),
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}