// 23. Create an application with navigation drawer with 3 tabs gallery, audio and video and design each page with dummy data.

import 'package:assignment4/Q23/Audio.dart';
import 'package:assignment4/Q23/Gallery.dart';
import 'package:assignment4/Q23/Video.dart';
import 'package:flutter/material.dart';

class Q23 extends StatefulWidget {
  const Q23({super.key});

  @override
  State<Q23> createState() => _Q23State();
}

class _Q23State extends State<Q23> {
  void changeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }

  int _selected = 0;
  List<Widget> wigetList = [
    Gallery1(),
    Audio1(),
    Video1(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.grey[700],
        title: Text(
          "Drawer Task",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan[100],
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/background.jpg",
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    child: Icon(Icons.person),
                  ),
                  Text(
                    "Suraj Singh Samant",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "surajsinghsamant31@gmail.com",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  selected: _selected == 0,
                  selectedColor: Colors.red,
                  hoverColor: Colors.cyan,
                  title: Text("Gallery"),
                  leading: Icon(Icons.browse_gallery_outlined),
                  onTap: () {
                    changeSelected(0);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  selected: _selected == 1,
                  selectedColor: Colors.red,
                  hoverColor: Colors.cyan,
                  title: Text("Audio"),
                  leading: Icon(Icons.music_note_outlined),
                  onTap: () {
                    changeSelected(1);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  selected: _selected == 2,
                  selectedColor: Colors.red,
                  hoverColor: Colors.cyan,
                  title: Text("Video"),
                  leading: Icon(Icons.movie),
                  onTap: () {
                    changeSelected(2);
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: wigetList[_selected],
      ),
    );
  }
}
