// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';

enum ButtonSize {
  /// height == 50
  large,

  /// height == 36
  small,

  /// height == 30
  extraSmall;

  double get height {
    switch (this) {
      case large:
        return 50;
      case small:
        return 36;
      case extraSmall:
        return 30;
    }
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.enable = true,
    required this.title,
    required this.onTap,
    this.width,
    this.showLoading = false,
    this.buttonSize = ButtonSize.large,
    required this.backgroundColor,
    required this.textColor,
    required this.textSize,
    this.fontStyle,
    this.borderColor = AppColors.colorFB5E22,
    // required this.icon,
    //this.fontSize = 14,
  }) : super(key: key);

  final bool enable;
  final String title;
  final VoidCallback onTap;
  final double? width;
  final bool showLoading;
  final ButtonSize buttonSize;
  final Color backgroundColor;
  final Color textColor;
  final TextStyle? fontStyle;
  final Color borderColor;
  final double textSize;
  // final Icon icon;

  @override
  Widget build(BuildContext context) {
    final double height = buttonSize.height;
    return Container(
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 8,
            ),
            Center(
              child: Text(title, style: fontStyle),
            ),
          ],
        ),
      ),
    );
  }
}
