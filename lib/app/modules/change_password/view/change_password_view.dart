import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/core/widgets/custom_appbar.dart';
import 'package:msb_flutter/app/core/widgets/custom_buttom.dart';
import 'package:msb_flutter/app/modules/change_password/cubit/change_password_cubit.dart';
import 'package:msb_flutter/app/modules/change_password/cubit/change_password_state.dart';
import 'package:msb_flutter/app/modules/change_password/view/widgets/list_notification.dart';
import 'package:msb_flutter/app/modules/change_password/view/widgets/text_field_new_password.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  late ChangePasswordCubit cubit;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'Đổi mật khẩu',
        ),
        body: _build());
  }

  Widget _build() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _notificationText(),
              _textFieldNewPassword(),
              _titleNotification(),
              _listNotification(),
              _attention()
            ],
          ),
          _buttonNext()
        ]),
      ),
    );
  }

  _notificationText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tài khoản đăng nhập lần đầu.',
          style: TextStyles.regular14r.copyWith(color: AppColors.color616161),
        ),
        Text(
          'Vui lòng mật khẩu để bảo vệ tài khoản của bạn.',
          style: TextStyles.regular14r.copyWith(color: AppColors.color616161),
        ),
        const SizedBox(
          height: 27,
        ),
      ],
    );
  }

  _textFieldNewPassword() {
    return const TextFieldNewPassword();
  }

  _titleNotification() {
    return Column(
      children: [
        const SizedBox(
          height: 35,
        ),
        Text(
          'Mật khẩu mới đảm bảo',
          style: TextStyles.regular14r.copyWith(
              color: AppColors.color212B36, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }

  _listNotification() {
    return const ListNotification();
  }

  _attention() {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Chú ý:',
            style: TextStyles.regular14r.copyWith(
                color: AppColors.color7D441A, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: ' Mật khẩu mới không trùng với 3 mật khẩu gần nhất.',
            style: TextStyles.regular14r.copyWith(color: AppColors.color7D441A),
          ),
        ],
      ),
    );
  }

  _buttonNext() {
    return BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 80, 0, 50),
        child: CustomButton(
          buttonSize: ButtonSize.large,
          title: 'Tiếp tục',
          onTap: () {},
          backgroundColor: AppColors.colorFB5E22,
          fontStyle: TextStyles.medium16s,
          textColor: AppColors.colorFFFFFF,
          textSize: 10,
        ),
      );
    });
  }
}
