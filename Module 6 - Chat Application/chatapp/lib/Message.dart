import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessegeScreen extends StatefulWidget {
  DocumentSnapshot<Object?> userSnapshot;
  MessegeScreen({super.key, required this.userSnapshot});

  @override
  State<MessegeScreen> createState() => _MessegeScreenState();
}

class _MessegeScreenState extends State<MessegeScreen> {
  TextEditingController _messageController = TextEditingController();

  String formatTimestamp(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();
    String formattedTime = DateFormat.jm().format(dateTime);
    String formattedDate = DateFormat.yMMMd().format(dateTime);
    return '$formattedDate at $formattedTime';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              child: Image.network(widget.userSnapshot["profilePic"]),
            ),
            SizedBox(
              width: 10,
            ),
            Text("${widget.userSnapshot["username"]}"),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("Messages")
                .where("receiver",
                    isEqualTo: FirebaseAuth.instance.currentUser!.uid)
                .where("sender", isEqualTo: widget.userSnapshot.id)
                .orderBy("timestamp")
                .snapshots(),
            builder: (context, senderSnapshot) {
              if (senderSnapshot.hasData) {
                var senderMessages = senderSnapshot.data!.docs;
                return StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("Messages")
                      .where("sender",
                          isEqualTo: FirebaseAuth.instance.currentUser!.uid)
                      .where("receiver", isEqualTo: widget.userSnapshot.id)
                      .orderBy("timestamp")
                      .snapshots(),
                  builder: (context, receiverSnapshot) {
                    if (receiverSnapshot.hasData) {
                      var receiverMessages = receiverSnapshot.data!.docs;
                      var allMessages = [
                        ...senderMessages,
                        ...receiverMessages
                      ];
                      allMessages.sort((a, b) => (a["timestamp"] as Timestamp)
                          .compareTo(b["timestamp"] as Timestamp));
                      return ListView.builder(
                        itemCount: allMessages.length,
                        itemBuilder: (context, index) {
                          var message = allMessages[index];
                          String senderID = message["sender"];
                          bool isCurrentUserIsSender = senderID ==
                              FirebaseAuth.instance.currentUser!.uid;

                          return Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: isCurrentUserIsSender
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              children: [
                                if (!isCurrentUserIsSender)
                                  CircleAvatar(
                                    child: Text(
                                        "${widget.userSnapshot["username"][0]}"),
                                  )
                                else
                                  SizedBox(
                                    width: 32,
                                  ),
                                SizedBox(
                                  width: 8,
                                ),
                                Flexible(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: isCurrentUserIsSender
                                        ? Colors.blue
                                        : Colors.yellow,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                  child: Column(
                                    children: [
                                      Text("${message["message"]}"),
                                      Text(formatTimestamp(
                                          message["timestamp"] as Timestamp))
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          );
                        },
                      );
                    } else if (receiverSnapshot.hasError) {
                      print(
                          "----------------->>> ERROR ${receiverSnapshot.error}");
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                );
              } else if (senderSnapshot.hasError) {
                print(
                    "---------------------->>> ERROR ${senderSnapshot.error}");
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Type Message Here",
                  ),
                )),
                IconButton(
                    onPressed: () {
                      String messageText = _messageController.text.toString();
                      if (messageText.isNotEmpty) {
                        FirebaseFirestore.instance.collection("Messages").add({
                          "sender": FirebaseAuth.instance.currentUser!.uid,
                          "receiver": widget.userSnapshot.id,
                          "message": messageText,
                          "timestamp": DateTime.now()
                        });
                        _messageController.clear();
                      }
                    },
                    icon: Icon(
                      Icons.send,
                      color: Colors.green,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
