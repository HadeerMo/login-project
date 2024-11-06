import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/constant.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/widgets/custom_button.dart';
import 'package:login_page/pages/widgets/custom_input.dart';
import 'package:login_page/pages/widgets/custom_launch_url_button.dart';
import 'package:login_page/pages/widgets/custom_line.dart';
import 'package:login_page/pages/widgets/custom_tail_text.dart';
import 'package:login_page/pages/widgets/custom_text_header.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({super.key});
  @override
  Widget build(BuildContext context) {
    const facebookUrl = 'https://www.facebook.com';
    const twitterUrl = 'https://x.com';
    const googlePlusUrl = 'https://plus.google.com';
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
                text: "SIGNUP",
              ),
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(signUpPageImage,width: MediaQuery.of(context).size.width *.7),
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
                text: "SIGNUP",
                foreGroundColor: Color(0xffF0E6FF),
                backGroundColor: Color(0xff6F35A5),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTailText(
                startText: "Already have an Account ? ",
                tailText: "Sign in",
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(LoginPage.id);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomLine(),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomLaunchUrlButton(
                      url: facebookUrl,
                      svgIcon: "assets/icons/facebook.svg",
                    ),
                  ),
                  CustomLaunchUrlButton(
                    url: twitterUrl,
                    svgIcon: "assets/icons/twitter.svg",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CustomLaunchUrlButton(
                      url: googlePlusUrl,
                      svgIcon: "assets/icons/google-plus.svg",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Image.asset(
            "assets/images/signup_top.png",
            width: MediaQuery.of(context).size.width * .35,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            "assets/images/main_bottom.png",
            width: MediaQuery.of(context).size.width * .15,
          ),
        ),
      ],
    );
  }
}

