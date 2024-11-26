// Q17. open alert dialog when user want to exit from the application

import 'package:flutter/material.dart';

class Q17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        
        bool exitApp = await _showExitDialog(context);
        return exitApp; 
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Exit App Alert")),
        body: Center(child: Text("Press back to exit")),
      ),
    );
  }

  Future<bool> _showExitDialog(BuildContext context) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit App'),
            content: Text('Are you sure you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Exit'),
              ),
            ],
          ),
        ) ??
        false; // 
  }
}
