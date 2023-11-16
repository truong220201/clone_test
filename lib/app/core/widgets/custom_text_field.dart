import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    this.controller,
    required this.hintText,
    this.inputBorder = const UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(210, 247, 0, 0)),
    ),
    this.iconButton,
    this.cursorColor = AppColors.colorE80707,
    this.suffixIcon,
    required this.comment,
    this.floatingLabelBehavior,
    this.labelStyle = const TextStyle(
      color: AppColors.color0D1326,
    ),
    this.keyboardType,
    this.inputFormatters,
    this.labelText,
    this.contentPadding,
    this.counterText,
    this.textAlignVertical,
    this.padding = const EdgeInsets.only(left: 0, right: 0),
    this.border,
    this.isPassword = false,
    this.hintStyle = const TextStyle(),
    required this.haveComment,
    this.textInputAction,
  });
  final ValidateTextField? comment;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String hintText;
  final InputBorder? inputBorder;
  final IconButton? iconButton;
  final Color cursorColor;
  final Widget? suffixIcon;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final String? labelText;
  final TextStyle labelStyle;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsetsGeometry? contentPadding;
  final String? counterText;
  final TextAlignVertical? textAlignVertical;
  final EdgeInsetsGeometry padding;
  final InputBorder? border;
  final bool isPassword;
  final TextStyle hintStyle;
  final bool haveComment;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: padding,
          child: TextField(
            obscureText: isPassword,
            onChanged: onChanged,
            controller: controller,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              enabledBorder: border,
              focusedBorder: border,
              hintStyle: hintStyle,
              hintText: hintText,
              suffixIcon: suffixIcon,
              floatingLabelBehavior: floatingLabelBehavior,
              labelStyle: labelStyle,
              labelText: labelText,
              contentPadding: contentPadding,
              border: border,
            ),
            cursorColor: cursorColor,
          ),
        ),
        haveComment
            ? comment ??
                const SizedBox(
                  height: 30,
                )
            : const SizedBox(),
      ],
    );
  }
}

class ValidateTextField extends StatelessWidget {
  const ValidateTextField(
      {super.key,
      this.validate,
      this.colorText = AppColors.colorE80707,
      this.padding = const EdgeInsets.symmetric(vertical: 5)});
  final String? validate;
  final EdgeInsetsGeometry? padding;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: padding,
      child: validate != null
          ? Text(
              validate!,
              style: TextStyle(color: colorText),
            )
          : const SizedBox(
              height: 10,
            ),
    );
  }
}
