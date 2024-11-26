/* Q24. create a Phone call App when user first time open the app it will automatically generate one dialog which has two option allow, deny if
click on allow permission is grant in settings */

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Q24 extends StatefulWidget {
  @override
  _Q24State createState() => _Q24State();
}

class _Q24State extends State<Q24> {
  @override
  void initState() {
    super.initState();
    _checkAndRequestPermission();
  }

  void _checkAndRequestPermission() async {
    if (await Permission.phone.isDenied) {
      _showPermissionDialog();
    }
  }

  void _showPermissionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Phone Call Permission'),
          content: Text(
              'This app requires phone call permission to function. Please allow it in the next prompt.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Deny'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                PermissionStatus status = await Permission.phone.request();
                if (status.isGranted) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Permission Granted!'),
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Permission Denied!'),
                  ));
                }
              },
              child: Text('Allow'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Call'),
      ),
      body: Center(
        child: Text(
          'Welcome! Permission status will be checked.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
