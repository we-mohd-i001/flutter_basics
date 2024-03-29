import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/counter/counter_screen.dart';
import 'package:flutter_basics/presentation/list/list_example.dart';
import 'package:flutter_basics/presentation/screens/home_screen.dart';
import 'package:flutter_basics/theme/screens/theme_screen.dart';

class RootNavigationBar extends StatefulWidget {
  const RootNavigationBar({super.key});

  @override
  State<RootNavigationBar> createState() => _RootNavigationBarState();
}

class _RootNavigationBarState extends State<RootNavigationBar> {
  int _curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _curIndex,
        children: const [
          HomeScreen(),
          CounterScreen(),
          ListExample(),
          ThemeScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blue,
        // selectedItemColor: Colors.yellow,
        // unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _curIndex,
        onTap: (index) {
          setState(() {
            _curIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Examples'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Counter'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'Theme'),
        ],
      ),
    );
  }
}
