import 'package:flutter/material.dart';

OutlineInputBorder customInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }