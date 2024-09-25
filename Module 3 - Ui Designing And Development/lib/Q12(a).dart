import 'package:flutter/material.dart';

class Q12a extends StatefulWidget {
  const Q12a({super.key});

  @override
  State<Q12a> createState() => _Q12aState();
}

class _Q12aState extends State<Q12a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          Icon(
            Icons.search,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          "Restaurent        ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                color: Colors.grey,
                                child: Text(
                                  "20-30min",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Text(
                                "2.4km Restaurent",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/images/r.jpg"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("  Orange Sandwiches is delicious"),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.amber[300],
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.orange),
                    onPressed: () {},
                    child: Text(
                      "Recommended",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Popular",
                        style: TextStyle(color: Colors.black),
                      )),
                  TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Noodles",
                        style: TextStyle(color: Colors.black),
                      )),
                  TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Pizza",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: 20,
                    left: 25,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          AssetImage("assets/images/sobaSoup.webp"),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 30,
                    child: Column(
                      children: [
                        Text(
                          "Soba Soup",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "    No.1 in sales",
                          style: TextStyle(
                              color: Colors.yellow[600], fontSize: 15),
                        ),
                        Text(
                          "\$12            ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 350, top: 40, child: Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: 20,
                    left: 25,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/seiUs.jpeg"),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 30,
                    child: Column(
                      children: [
                        Text(
                          "    Sei Us Samun Phrai",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "No.1 in sales       ",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 15),
                        ),
                        Text(
                          "\$12                      ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 350,
                      top: 40,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_outlined)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                    top: 20,
                    left: 25,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/pasta.jpeg"),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 30,
                    child: Column(
                      children: [
                        Text(
                          "     Ratatoullie Pasta",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "No.1 in sales ",
                          style: TextStyle(
                              color: Colors.yellow[600], fontSize: 15),
                        ),
                        Text(
                          "\$12                ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 350, top: 40, child: Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        shape: CircleBorder(),
        child: Icon(Icons.shopping_bag_outlined),
      ),
    );
  }
}
