import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Q12b extends StatefulWidget {
  const Q12b({super.key});

  @override
  State<Q12b> createState() => _Q12bState();
}

class _Q12bState extends State<Q12b> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_back)),
                ),
                CircleAvatar(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined)))
              ],
            )),
        body: Stack(children: [
          Positioned.fill(
              child: Container(
            color: Colors.amber,
          )),
          Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
              )),
          Positioned(
              top: 50,
              left: 120,
              child: CircleAvatar(
                maxRadius: 110,
                backgroundImage: AssetImage("assets/images/seiUs.jpeg"),
              )),
          Positioned(
              top: 300,
              right: 0,
              left: 15,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text(
                            "       Sei Ua Samun Phari",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.alarm,
                                color: Colors.blue,
                              ),
                              Text(
                                "50min",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.flame,
                                color: Colors.redAccent,
                              ),
                              Text(
                                "350 kcal",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100, top: 30),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "\$12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 125,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.amber),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(CupertinoIcons.minus),
                                  CircleAvatar(
                                    maxRadius: 20,
                                    child: Text("1"),
                                  ),
                                  Icon(Icons.add),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 210, top: 40),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "  Ingredienta",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/noodle.jpg"),
                              ),
                              Text("Noodle"),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/shrimp.jpg"),
                              ),
                              Text("Shrimp"),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/egg.jpg"),
                              ),
                              Text("Egg"),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/scallion.jpg"),
                              ),
                              Text("Scallion"),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 360, top: 40),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "  About",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Text(
                          "A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta's Talat Market",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ]),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.amber,
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined),
          label: CircleAvatar(child: Text("1")),
        ));
  }
}
