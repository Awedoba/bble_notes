import 'package:bble_notes/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color color;
  final Color textColor;
  final Color borderColor;
  CustomButton({
    this.color,
    this.borderColor = Colors.transparent,
    this.textColor = black,
    @required this.buttonText,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: color,
      textColor: textColor,
      padding: EdgeInsets.all(14.0),
      child: Text(buttonText),
    );
  }
}
