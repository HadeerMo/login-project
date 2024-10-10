import 'package:flutter/material.dart';

class CustomTextHeader extends StatelessWidget {
  const CustomTextHeader({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 119, 83, 153),
        fontFamily: "Courgette",
        fontSize:23
      ),
    );
  }
}