import 'package:brandora/core/style/colors.dart';
import 'package:flutter/material.dart';

class InteractiveCounter extends StatefulWidget {
  @override
  _InteractiveCounterState createState() => _InteractiveCounterState();
}

class _InteractiveCounterState extends State<InteractiveCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Minus button
        Container(
          decoration: BoxDecoration(
            color: AppColor.grey,
            borderRadius: BorderRadius.circular(15), // Circular border
          ),
          child: IconButton(
            icon: Icon(Icons.remove),
            onPressed: _decrementCounter,
          ),
        ),
        SizedBox(width: 20), // Space between the buttons
        // Display the counter number
        Text(
          '$_counter',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(width: 20), // Space between the buttons
        // Plus button
        Container(
          decoration: BoxDecoration(
            color: AppColor.grey,
            borderRadius: BorderRadius.circular(15), // Circular border
          ),
          child: IconButton(
            icon: Icon(Icons.add),
            onPressed: _incrementCounter,
          ),
        ),
      ],
    );
  }
}
