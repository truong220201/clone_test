import 'package:flutter/widgets.dart';

class LogoImageLogin extends StatelessWidget {
  const LogoImageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 119,
      height: 73,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/image_title_logina.webp'),
              fit: BoxFit.fill)),
    );
  }
}
