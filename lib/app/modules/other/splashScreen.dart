// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/imageSplash.png')),
    );
  }
}
