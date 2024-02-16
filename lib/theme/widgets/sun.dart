import 'package:flutter/material.dart';
import 'package:flutter_basics/theme/widgets/sun_shine.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 200,
      child: SunShine(
        radius: 160,
        child: SunShine(
          radius: 120,
          child: SunShine(
            radius: 80,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.orange],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight)),
            ),
          ),
        ),
      ),
    );
  }
}
