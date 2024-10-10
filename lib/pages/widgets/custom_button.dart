import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.foreGroundColor,
    required this.backGroundColor,
    this.onPressed,
  });
  final String text;
  final Color foreGroundColor;
  final Color backGroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backGroundColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .26, vertical: 15),
        child: Text(
          text,
          style: TextStyle(
            color: foreGroundColor,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}