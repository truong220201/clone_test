import 'dart:core';

import 'package:flutter/material.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/modules/change_password/view/widgets/bar_checker.dart';

enum ValidateStrength { strong, medium, bad }

// ignore: must_be_immutable
class PasswordStrengthChecker extends StatelessWidget {
  PasswordStrengthChecker({
    super.key,
    required this.validateLength,
    required this.color,
  });
  final int validateLength;
  final Color color;
  List<Widget> barListCheck = <Widget>[];
  List<Widget> barListOther = <Widget>[];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < validateLength; i++) {
      barListCheck.add(BarChecker(
        colorBar: color,
      ));
    }
    for (var i = 0; i < (5 - validateLength); i++) {
      barListOther.add(const BarChecker(
        colorBar: AppColors.color9E9E9E,
      ));
    }
    return Row(
      children: [
        Row(
          children: barListCheck,
        ),
        Row(
          children: barListOther,
        ),
      ],
    );
  }
}
