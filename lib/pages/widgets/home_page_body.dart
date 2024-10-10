import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/constant.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/signup_page.dart';
import 'package:login_page/pages/widgets/custom_button.dart';
import 'package:login_page/pages/widgets/custom_text_header.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustomTextHeader(text: "WELCOME TO EDU",),
              const SizedBox(
                height: 40,
              ),
              SvgPicture.asset(homePageImage,width: MediaQuery.of(context).size.width * .9,),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
                text: "LOGIN",
                foreGroundColor: const Color(0xffF0E6FF),
                backGroundColor: const Color(0xff6F35A5),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignupPage.id);
                },
                text: "SIGNUP",
                foreGroundColor: const Color(0xff6F35A5),
                backGroundColor: const Color(0xffF0E6FF),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Image(
            image: const AssetImage("assets/images/main_top.png"),
            width: MediaQuery.of(context).size.width * .3,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image(
            image: const AssetImage("assets/images/main_bottom.png"),
            width: MediaQuery.of(context).size.width * .18,
          ),
        ),
      ],
    );
  }
}


