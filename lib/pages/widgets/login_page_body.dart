import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/constant.dart';
import 'package:login_page/pages/signup_page.dart';
import 'package:login_page/pages/widgets/custom_button.dart';
import 'package:login_page/pages/widgets/custom_input.dart';
import 'package:login_page/pages/widgets/custom_tail_text.dart';
import 'package:login_page/pages/widgets/custom_text_header.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustomTextHeader(
                text: "LOGIN",
              ),
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(loginPageImage),
              const SizedBox(
                height: 20,
              ),
              const CustomInput(
                icon: Icons.person_2,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomInput(
                icon: Icons.lock,
                secure: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomButton(
                text: "LOGIN",
                foreGroundColor: Color(0xffF0E6FF),
                backGroundColor: Color(0xff6F35A5),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTailText(
                startText: "Don't have an Account ? ",
                tailText: "Sign Up",
                onTap: () {
                  Navigator.of(context).pushNamed(SignupPage.id);
                },
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(
            "assets/images/main_top.png",
            width: MediaQuery.of(context).size.width * .35,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset(
            "assets/images/login_bottom.png",
            width: MediaQuery.of(context).size.width * .35,
          ),
        ),
      ],
    );
  }
}


