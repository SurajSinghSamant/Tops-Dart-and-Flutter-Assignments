// Q29. Call via urllauncher, Send Sms via urllauncher

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Q29 extends StatefulWidget {
  const Q29({super.key});

  @override
  State<Q29> createState() => _Q77State();
}

class _Q77State extends State<Q29> {
  TextEditingController _phoneController = TextEditingController();

  Future<void> myPhoneCall(String? phonenumber) async {
    Uri phoneUri = Uri(scheme: "tel", path: phonenumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  Future<void> mySMS(String? phonenumber) async {
    Uri phoneUri = Uri(scheme: "sms", path: phonenumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "URL Launcher",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter phone number",
                labelText: "Phone Number",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  myPhoneCall(_phoneController.text.toString());
                },
                child: Text("Call"),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  mySMS(_phoneController.text.toString());
                },
                child: Text("Message"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
