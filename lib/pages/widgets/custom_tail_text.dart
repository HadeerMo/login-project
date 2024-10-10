import 'package:flutter/material.dart';

class CustomTailText extends StatelessWidget {
  const CustomTailText({
    super.key,
    required this.startText,
    required this.tailText, 
    this.onTap,
  });
  final String startText;
  final String tailText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          startText,
          style: const TextStyle(
            color: Color(0xff6F35A5),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            tailText,
            style: const TextStyle(
              color: Color(0xff6F35A5),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}