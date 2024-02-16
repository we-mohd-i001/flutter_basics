import 'package:flutter/material.dart';

class SunShine extends StatelessWidget {
  final child;
  final double radius;
  const SunShine({super.key, required this.child, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.2),
        ),
        child: child,
      ),
    );
  }
}
