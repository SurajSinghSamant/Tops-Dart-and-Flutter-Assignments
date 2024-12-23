import 'package:chatapp/Message.dart';
import 'package:chatapp/ProfileScreen.dart';
import 'package:chatapp/SignIn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  User? user;
  Dashboard({super.key, required this.user});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String? username;

  TextEditingController _searchController = TextEditingController();

  List<DocumentSnapshot>? allUsers;
  List<DocumentSnapshot>? filteredUsers;

  Future<void> fetchDataInfo() async {
    var document = await FirebaseFirestore.instance
        .collection("Data")
        .doc(widget.user!.uid)
        .get();
    setState(() {
      username = document["username"];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDataInfo();
  }

  void searchData(String keyword) {
    setState(() {
      if (keyword.isEmpty) {
        filteredUsers = allUsers!;
      } else {
        filteredUsers = allUsers!
            .where((user) =>
                user["username"].toLowerCase().contains(keyword.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $username"),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: (String value) {
              if (value == "Profile") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProfileScreen(user: widget.user)));
              } else if (value == "Logout") {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signin(),
                    ));
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(value: "Profile", child: Text("Profile")),
                PopupMenuItem(value: "Logout", child: Text("Logout")),
              ];
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search"),
                onChanged: (value) {
                  searchData(value);
                },
              ),
            ),
          ),
          Expanded(
              child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("Data").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // allUsers = snapshot.data!.docs.toList();
                allUsers = snapshot.data!.docs
                    .where((element) => element.id != widget.user)
                    .toList();

                filteredUsers ??= List.from(allUsers!);
                print(filteredUsers);

                return ListView.builder(
                  itemCount: filteredUsers!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MessegeScreen(
                                    userSnapshot: filteredUsers![index]),
                              ));
                        },
                        child: Card(
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.network(
                                    "${filteredUsers![index]["profilePic"]}"),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text("${filteredUsers![index]["username"]}"),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          ))
        ],
      ),
    );
  }
}
