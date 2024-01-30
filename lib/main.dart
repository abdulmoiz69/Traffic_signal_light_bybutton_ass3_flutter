import 'package:flutter/material.dart';
import 'custom_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Traffic Signal Light'),
        ),
        body: Container(
          color: Colors.blueGrey, // Change this line to set your desired background color
          child: Center(
            child: TrafficLight(),
          ),
        ),
      ),
    );
  }
}
