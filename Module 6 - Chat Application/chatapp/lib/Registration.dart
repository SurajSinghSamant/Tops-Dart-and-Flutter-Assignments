import 'package:chatapp/SignIn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String? profilePic =
      "https://www.google.com/search?sca_esv=332c1457e26e21ac&sxsrf=ADLYWIJJIceKhlOcGlKr_R27elZtnBKDhw:1732253634371&q=profilepic&udm=2&fbs=AEQNm0DvD4UMlvdpwktgGj2ZHhIXAIHy0lF5HBdT5py_0SmcDRj-ZcG8sN4MPTI25WFYis4wl2w2HABIwzHTNHgs0XyvwBQ326rTyYqJYbg_1X6pmiSPz_CRfEBqQCjykRrGJSrv9v0bwyitIWs1yYdbN-EGj2TW6HHOz0FdHytnAwTFdGSrJBWOpuoszbbCcyR9YmU8Qz2VR8uZmsP5VT7H3Itkd0BZuQ&sa=X&ved=2ahUKEwi0_aXUm--JAxXW6jgGHaWNDkAQtKgLegQIGRAB&biw=1039&bih=688&dpr=2#vhid=3K-Ql4EMgl5OaM&vssid=mosaic";
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> registerUser(
      String? username, String? email, String? password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);

      User? user = userCredential.user;

      FirebaseFirestore.instance.collection("Data").doc(user!.uid).set(
          {"email": email, "username": username, "profilePic": profilePic});

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Signin()));
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Please enter valid data"),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: "Enter Your Username",
                label: Text("Username"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                label: Text("Email"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                label: Text("Password"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    registerUser(
                        _usernameController.text.toString(),
                        _emailController.text.toString(),
                        _passwordController.text.toString());
                  });
                },
                child: Text("Submit")),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Text("Click here if already registered"),
            )
          ],
        ),
      ),
    );
  }
}
