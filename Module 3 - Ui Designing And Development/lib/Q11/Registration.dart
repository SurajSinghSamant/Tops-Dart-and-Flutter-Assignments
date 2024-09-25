import 'package:assignment3/Q11/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text("Registration Form"),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Suraj',
                labelText: 'Username',
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'surajsinghsamant31@gmail.com',
                labelText: 'Email',
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
                labelText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Text(
                "Register Now",
                style: TextStyle(fontSize: 20),
              ),
            ),
            height: 50,
            width: 375,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Colors.black,
                  width: 1.2,
                )),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Already have an account ?",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginpage(),
                      ));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
