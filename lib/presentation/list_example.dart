import 'package:flutter/material.dart';

class ListExample extends StatelessWidget {
  const ListExample({super.key});

  @override
  Widget build(BuildContext context) {
    var colorList = [
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.purple,
      Colors.deepPurple,
      Colors.pink,
      Colors.deepOrange,
      Colors.orange,
      Colors.black,
      Colors.red,
      Colors.redAccent,
      Colors.greenAccent
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Example'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
        return Container(
          height: 100,
          color: colorList[index],
        );
          },
          itemCount: colorList.length,
        ),
      ),
    );
  }
}
