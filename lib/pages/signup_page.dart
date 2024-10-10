import 'package:flutter/material.dart';
import 'package:login_page/constant.dart';
import 'package:login_page/pages/widgets/signup_page_body.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  static const  id = signUpPage;
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignUpPageBody(),
      ),
    );
  }
}