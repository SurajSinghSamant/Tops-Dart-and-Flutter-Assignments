// Q22. Create an application with bottom navigation with 3 tabs Gallery, audio and video and design each page with dummy data

import 'package:assignment4/Q22/Audio.dart';
import 'package:assignment4/Q22/Gallery.dart';
import 'package:assignment4/Q22/Video.dart';
import 'package:flutter/material.dart';

class Q22 extends StatefulWidget {
  const Q22({super.key});

  @override
  State<Q22> createState() => _Q22State();
}

class _Q22State extends State<Q22> {
  int _selectedIndex = 0;
  List<Widget> myWidgets = [
    Gallery(),
    Audio(),
    Video(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myWidgets[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.browse_gallery_outlined,
              ),
              label: "Gallery"),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined), label: "Audio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined), label: "Video")
        ],
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
