import 'package:flutter/material.dart';

class TrafficLight extends StatefulWidget {
  @override
  _TrafficLightState createState() => _TrafficLightState();
}

class _TrafficLightState extends State<TrafficLight> {
  Color _redColor = Colors.red;
  Color _yellowColor = Colors.grey;
  Color _greenColor = Colors.grey;

  void _changeLight() {
    setState(() {
      if (_redColor == Colors.red) {
        _redColor = Colors.grey;
        _yellowColor = Colors.yellow;
      } else if (_yellowColor == Colors.yellow) {
        _yellowColor = Colors.grey;
        _greenColor = Colors.green;
      } else if (_greenColor == Colors.green) {
        _greenColor = Colors.grey;
        _redColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Light(color: _redColor),
              Light(color: _yellowColor),
              Light(color: _greenColor),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: _changeLight,
          child: Text('Change Light'),
        ),
      ],
    );
  }
}

class Light extends StatelessWidget {
  final Color color;

  const Light({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
