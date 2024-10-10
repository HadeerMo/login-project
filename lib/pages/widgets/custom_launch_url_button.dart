import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomLaunchUrlButton extends StatelessWidget {
  const CustomLaunchUrlButton({
    super.key,
    required this.url,
    required this.svgIcon,
  });

  final String url;
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url)); // Launch the URL
        } else {
          throw 'Could not launch $url'; // Error handling
        }
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 220, 223, 223),
            width: 1.0,
          ),
          // borderRadius: BorderRadius.circular(50),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          svgIcon,
          width: 17,
          colorFilter: const ColorFilter.mode(
            Color(0xff6F35A5),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
