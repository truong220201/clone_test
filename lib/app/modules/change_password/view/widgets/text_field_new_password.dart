import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/core/widgets/custom_text_field.dart';
import 'package:msb_flutter/app/modules/change_password/cubit/change_password_cubit.dart';
import 'package:msb_flutter/app/modules/change_password/cubit/change_password_state.dart';
import 'package:msb_flutter/app/modules/change_password/view/widgets/password_streng_with_text.dart';

class TextFieldNewPassword extends StatefulWidget {
  const TextFieldNewPassword({
    super.key,
  });

  @override
  State<TextFieldNewPassword> createState() => _TextFieldNewPasswordState();
}

class _TextFieldNewPasswordState extends State<TextFieldNewPassword> {
  final TextEditingController _password = TextEditingController();

  final TextEditingController _rePassword = TextEditingController();
  @override
  void dispose() {
    _password.dispose();
    _rePassword.dispose();
    super.dispose();
  }

  bool showPassword = false;
  bool showRePassword = false;

  @override
  Widget build(
    BuildContext context,
  ) {
    return BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
        builder: (context, state) {
      ChangePasswordCubit cubit = context.read<ChangePasswordCubit>();
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textTitle('Mật khẩu mới'),
          _newPassword(
              onChanged: (value) => {
                    cubit.setPassword(_password.text),
                  },
              deleteText: () {
                _password.text = '';
                cubit.removeTextPassword();
              }),
          state.ruleScore != 0
              ? _passWithText(state.ruleScore)
              : const SizedBox(
                  height: 35,
                ),
          _textTitle('Xác nhận mật khẩu mới'),
          _reNewPassword(
              onChanged: (value) => {
                    cubit.setRePassword(_rePassword.text),
                  },
              deleteText: () {
                _rePassword.text = '';
                cubit.removeTextRePassword();
                cubit.dontShowCommentWhenDelete();
              },
              checkRePassword: state.checkRepassword)
        ],
      );
    });
  }

  _passWithText(int score) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        PasswordStrengWithText(
          numValid: score,
        ),
        const SizedBox(
          height: 35,
        ),
      ],
    );
  }

  _textTitle(String text) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyles.regular14r.copyWith(
              color: AppColors.color212B36, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  _newPassword({required Function onChanged, required Function deleteText}) {
    return _customTextField(
        deleteText: deleteText,
        isFinalText: false,
        haveDeleteText: _password.text != '',
        controller: _password,
        onChanged: (value) => onChanged(value),
        haveComment: false,
        comment: const ValidateTextField(),
        showPass: showPassword,
        changeShowPass: () {
          setState(() {
            showPassword = !showPassword;
          });
        });
  }

  _reNewPassword(
      {required Function onChanged,
      required bool checkRePassword,
      required Function deleteText}) {
    return _customTextField(
        isFinalText: true,
        haveDeleteText: _rePassword.text != '',
        deleteText: deleteText,
        controller: _rePassword,
        onChanged: (value) => onChanged(value),
        haveComment: !checkRePassword,
        comment: const ValidateTextField(
          validate: 'Mật khẩu không trùng khớp',
        ),
        showPass: showRePassword,
        changeShowPass: () {
          setState(() {
            showRePassword = !showRePassword;
          });
        });
  }

  _customTextField(
      {required TextEditingController controller,
      required Function onChanged,
      required bool haveComment,
      required bool showPass,
      required Function changeShowPass,
      required ValidateTextField comment,
      required bool haveDeleteText,
      required Function deleteText,
      required bool isFinalText}) {
    return CustomTextField(
      textInputAction:
          isFinalText ? TextInputAction.done : TextInputAction.next,
      haveComment: haveComment,
      controller: controller,
      onChanged: (value) => onChanged(value),
      contentPadding: const EdgeInsets.all(12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
            color:
                !haveComment ? AppColors.color616161 : AppColors.colorE80707),
      ),
      comment: comment,
      keyboardType: TextInputType.text,
      isPassword: !showPass,
      hintStyle: TextStyles.regular14r,
      hintText: 'hint',
      // inputBorder: InputBorder,
      suffixIcon: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          haveDeleteText
              ? _deleteRowTextWidget(deleteTextFunc: () => deleteText())
              : const SizedBox(),
          SizedBox(
            width: 20,
            height: 20,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () => changeShowPass(),
              icon: SvgPicture.asset(
                "assets/svg/ic_eye.svg",
              ),
            ),
          ),
          const SizedBox(
            width: 18,
          ),
        ],
      ),
    );
  }

  _deleteRowTextWidget({required Function deleteTextFunc}) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () => deleteTextFunc(),
            icon: SvgPicture.asset(
              "assets/svg/ic_exit.svg",
            ),
          ),
        ),
        const SizedBox(
          width: 7.5,
        ),
      ],
    );
  }
}
