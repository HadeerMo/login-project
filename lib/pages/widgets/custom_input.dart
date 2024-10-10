import 'package:flutter/material.dart';
import 'package:login_page/pages/helper_methods.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.icon,
    this.secure = false,
  });
  final IconData icon;
  final bool secure;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: TextField(
        obscureText: secure,
        decoration: InputDecoration(
            border: customInputBorder(),
            enabledBorder: customInputBorder(),
            filled: true,
            fillColor: const Color(0xffF0E6FF),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: const Color(0xff6F35A5),
                size: 20,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 20)),
      ),
    );
  }
}