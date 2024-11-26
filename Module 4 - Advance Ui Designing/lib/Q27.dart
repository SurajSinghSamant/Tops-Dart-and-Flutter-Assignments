//  27. Create an Android application which manage activity lifecycle stages and showing toast with performing different stages.
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Q27 extends StatefulWidget {
  @override
  _Q27State createState() => _Q27State();
}

class _Q27State extends State<Q27> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    showToast("App Initialized");
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    showToast("App Disposed");
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.inactive:
        showToast("App Inactive");
        break;
      case AppLifecycleState.paused:
        showToast("App Paused");
        break;
      case AppLifecycleState.resumed:
        showToast("App Resumed");
        break;
      case AppLifecycleState.detached:
        showToast("App Detached");
        break;
      case AppLifecycleState.hidden:
        showToast("App Hidden");
        break;
      default: // Optional fallback
        showToast("Unknown State");
        break;
    }
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Activity Lifecycle Demo"),
        ),
        body: Center(
          child: Text(
            'Check Toast Messages for Lifecycle Events!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
