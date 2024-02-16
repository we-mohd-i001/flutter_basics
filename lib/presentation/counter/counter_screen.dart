import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter'
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                _count -= 1;
              });
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.remove),),
          FloatingActionButton(
            onPressed: (){
              setState(() {
                _count += 1;
              });
            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),)
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            '$_count',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 200,
              color: _count >= 0 ? Colors.green : Colors.red
          ),),
        )
      ),
    );
  }
}
