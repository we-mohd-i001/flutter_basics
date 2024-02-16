import 'package:flutter/material.dart';

class ListExample extends StatelessWidget {
  const ListExample({super.key});

  @override
  Widget build(BuildContext context) {
    var colorList = [
      Colors.green,
      Colors.blue,
      Colors.blueGrey,
      Colors.purple,
      Colors.deepPurple,
      Colors.pink,
      Colors.deepOrange,
      Colors.orange,
      Colors.pinkAccent,
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
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [colorList[index], colorList[index + 1]],
                ),
              ),
            );;
          },
          itemCount: colorList.length - 1,
        ),
      ),
    );
  }
}
