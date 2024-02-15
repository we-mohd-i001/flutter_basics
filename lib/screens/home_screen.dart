import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basics'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
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
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.all(20),
            child: Container(
              height: 56,
              width: 200,
              color: Colors.lightBlue,
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text('Center Text!', style: TextStyle(
                fontSize: 36
              ),),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 200,
              width: 200,
              child: Placeholder(
                color: Colors.brown,
                strokeWidth: 5,
                child: Center(child: Text('My PlaceHolder')),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 200,
              width: 200,
              child: Placeholder(
                color: Colors.blue,
                strokeWidth: 5,
                child: Center(child: Text('My PlaceHolder')),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 200,
              width: 200,
              child: Placeholder(
                color: Colors.red,
                strokeWidth: 5,
                child: Center(child: Text('My PlaceHolder')),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 200,
              width: 200,
              child: Placeholder(
                color: Colors.green,
                strokeWidth: 10,
                child: Center(child: Text('My PlaceHolder')),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
