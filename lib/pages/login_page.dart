import 'package:flutter/material.dart';
import 'package:login_page/constant.dart';
import 'package:login_page/pages/widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const  id = loginPage;
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginPageBody(),
      ),
    );
  }
}