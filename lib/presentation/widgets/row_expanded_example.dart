import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Some text!'),
        Container(
          height: 60,
          width: 60,
          color: Colors.blue,
        ),
        Container(
          height: 60,
          width: 60,
          color: Colors.amber,
        )
      ],
    );
  }
}
