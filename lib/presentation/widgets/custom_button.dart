import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final buttonHeight;
  final buttonWidth;
  final infoMessage;
  final buttonIcon;
  final buttonIconColor;

  const CustomButton({
    super.key,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.infoMessage,
    required this.buttonIcon,
    required this.buttonIconColor});

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: buttonHeight,
      width: buttonWidth,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.pink],
        )
      ),
      child: InkWell(
        onTap: (){
          debugPrint(infoMessage);
        },
        splashColor: Colors.grey.shade200,
        child: Center(
          child: Icon(
            buttonIcon,
            color : buttonIconColor
          ),
        ),
      ),
    );
  }
}
