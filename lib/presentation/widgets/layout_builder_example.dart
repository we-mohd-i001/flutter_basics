import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.green,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Center(
                child: Container(
                  color: Colors.brown,
                  width: constraints.maxWidth * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 5,
                        height: 20,
                        color: Colors.white,
                      ),
                      Container(
                        width: 5,
                        height: 20,
                        color: Colors.white,
                      ),
                      Container(
                        width: 5,
                        height: 20,
                        color: Colors.white,
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
