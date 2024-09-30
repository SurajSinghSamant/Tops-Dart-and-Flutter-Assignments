import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 23),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.transparent)),
              child: Image.asset(
                "assets/images/Nature.jpg",
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "   Oeschinen Lake Campground",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        "Kandersteg, Switzerland        ",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          shadows: [Shadow(color: Colors.red)],
                        ),
                        Text("41"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      Text(
                        "CALL",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.send,
                        color: Colors.blue,
                      ),
                      Text(
                        "ROUTE",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Text(
                        "SHARE",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                child: Center(
                    child: Text(
                        "Lake Oeschinen lies at the foot of the Biuemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kanderstag, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing and riding the summer toboggan run."))),
          )
        ],
      ),
    );
  }
}
