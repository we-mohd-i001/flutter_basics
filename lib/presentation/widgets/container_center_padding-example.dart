import 'package:flutter/material.dart';

class ContainerCenterPaddingExample extends StatelessWidget {
  const ContainerCenterPaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
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
      SizedBox(
        height: size.height,
        width: 200,
        child: const Placeholder(
          color: Colors.red,
          strokeWidth: 5,
          child: Center(child: Text('My PlaceHolder')),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 200,
        width: size.width,
        child: const Placeholder(
          color: Colors.green,
          strokeWidth: 10,
          child: Center(child: Text('My PlaceHolder')),
        ),
      )
    ]);
  }
}
