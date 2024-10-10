import 'package:flutter/material.dart';
import 'package:login_page/pages/home_page.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/signup_page.dart';

void main() {
  runApp(const LoginSystem());
}

class LoginSystem extends StatelessWidget {
  const LoginSystem({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=> const HomePage(),
        LoginPage.id: (context) => const LoginPage(),
        SignupPage.id: (context) => const SignupPage(),
      },
    );
  }
}

