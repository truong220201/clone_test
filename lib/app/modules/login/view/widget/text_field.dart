import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/core/widgets/custom_text_field.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin(
      {super.key,
      this.validateText,
      required this.hint,
      required this.isPass,
      required this.showPass,
      required this.controller,
      required this.onChanged,
      this.showPassFunc});
  final String? validateText;
  final String hint;
  final bool isPass;
  final bool showPass;
  final TextEditingController controller;
  final Function onChanged;
  final Function? showPassFunc;

  @override
  Widget build(
    BuildContext context,
  ) {
    return CustomTextField(
        haveComment: true,
        controller: controller,
        onChanged: (value) => onChanged(value),
        contentPadding: const EdgeInsets.all(12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
              color: validateText != null
                  ? AppColors.colorE80707
                  : AppColors.color616161),
        ),
        comment: ValidateTextField(
          validate: validateText,
        ),
        keyboardType: isPass ? TextInputType.text : TextInputType.phone,
        isPassword: isPass ? !showPass : false,
        hintStyle: TextStyles.regular14r,
        hintText: hint,
        suffixIcon: isPass
            ? IconButton(
                onPressed: () => showPassFunc!(),
                icon: SvgPicture.asset(
                  "assets/svg/ic_eye.svg",
                ),
              )
            : null);
  }
}
