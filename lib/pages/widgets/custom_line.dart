import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color.fromARGB(
                255, 207, 207, 207), // The color of the line
            thickness: 1, // Empty space after the line
            indent: 40,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            "OR",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff6F35A5),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color.fromARGB(
                255, 207, 207, 207), // The color of the line
            thickness: 1, // Empty space after the line
            endIndent: 40,
          ),
        ),
      ],
    );
  }
}
