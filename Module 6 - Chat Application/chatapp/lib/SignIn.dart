import 'package:chatapp/Dashboard.dart';
import 'package:chatapp/Registration.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _isLoading = false;

  Future<void> loginUser(String? email, String? password) async {
    setState(() {
      _isLoading = true;
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);

      User? user = userCredential.user;

      print(user!.uid);

      var document = await FirebaseFirestore.instance
          .collection("Data")
          .doc(user.uid)
          .get();

      print(document["username"]);

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Dashboard(
              user: user,
            ),
          ));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter valid data')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  label: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  label: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        setState(() {
                          loginUser(_emailController.text.toString(),
                              _passwordController.text.toString());
                        });
                      },
                child: _isLoading
                    ? SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator())
                    : Text("Login")),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registration(),
                    ));
              },
              child: Text("New? Click for Registration"),
            )
          ],
        ),
      ),
    );
  }
}
