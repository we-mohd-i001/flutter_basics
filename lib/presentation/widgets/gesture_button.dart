import 'package:flutter/material.dart';

class GestureButton extends StatelessWidget {
  final infoMessage;
  final buttonText;

  const GestureButton({
    super.key,
    required this.infoMessage,
    required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(infoMessage);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(8)
        ),
        padding: EdgeInsets.all(10),
        child: Text(buttonText),
      ),
    );
  }
}
