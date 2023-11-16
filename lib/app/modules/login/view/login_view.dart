import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'package:msb_flutter/app/modules/login/cubit/login_cubit.dart';
import 'package:msb_flutter/app/modules/login/cubit/login_state.dart';
import 'package:msb_flutter/app/modules/login/view/widget/button_sign_in.dart';
import 'package:msb_flutter/app/modules/login/view/widget/logo_image.dart';
import 'package:msb_flutter/app/modules/login/view/widget/register_or_missing_password.dart';
import 'package:msb_flutter/app/modules/login/view/widget/text_field.dart';
import 'package:msb_flutter/app/modules/other/splashScreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    _splashShow();
    super.initState();
  }

  @override
  void dispose() {
    _password.dispose();
    _phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Column(children: [
              _logoImageLogin(),
              _textFieldUserName(),
              _textFieldPassword(),
              _buttonSignIn()
            ]),
            _registerOrMissingPassWord()
          ],
        ),
      ),
    );
  }

  _logoImageLogin() {
    return const Column(
      children: [
        LogoImageLogin(),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }

  _textFieldUserName() {
    final cubit = context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      return TextFieldLogin(
          validateText: cubit.errorName(state.errorPhoneNumberValidate),
          hint: 'Tên đăng nhập',
          isPass: false,
          showPass: false,
          controller: _phoneNumber,
          onChanged: (value) => cubit.validatePhoneNumber(value));
    });
  }

  _textFieldPassword() {
    final cubit = context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      return TextFieldLogin(
          validateText: cubit.errorName(state.errorPasswordValidate),
          hint: 'Mật khẩu',
          isPass: true,
          showPass: state.showPass,
          controller: _password,
          onChanged: (value) => cubit.validatePassword(value),
          showPassFunc: () => cubit.setShowPass());
    });
  }

  _buttonSignIn() {
    // final cubit = context.read<LoginCubit>();
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        ButtonSignIn(
          func: () => Get.toNamed('homeList'),
        )
      ],
    );
  }

  _registerOrMissingPassWord() {
    return const RegisterOrMissingPassWord();
  }

  _splashShow() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreens()),
      );
      Future.delayed(const Duration(milliseconds: 3000), () {
        Navigator.pop(context);
      });
    });
  }
}
