import 'package:chatapp/Dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  User? user;
  ProfileScreen({super.key, required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();

  Future<void> fetchDataInfo() async {
    var document = await FirebaseFirestore.instance
        .collection("Data")
        .doc(widget.user!.uid)
        .get();

    setState(() {
      _usernameController.text = document["username"];
      _emailController.text = document["email"];

      print("---->>>>${document["username"]}");
    });
  }

  Future<void> updateData() async {
    var document = await FirebaseFirestore.instance
        .collection("Data")
        .doc(widget.user!.uid)
        .update({"username": _usernameController.text.toString()});

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Profile Succesfully Updated")));

    Navigator.pop(context);
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => Dashboard(user: widget.user)));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDataInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Email",
                  label: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  hintText: "Email",
                  label: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  updateData();
                },
                child: Text("Update"))
          ],
        ),
      ),
    );
  }
}
