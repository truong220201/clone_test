import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:msb_flutter/app/modules/register/cubit/register_cubit.dart';
import 'package:msb_flutter/app/modules/register/cubit/register_state.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
      return Scaffold(
          body: Center(
        child: TextButton(
            onPressed: () => Get.back(), child: const Text('Dang ky')),
      ));
    });
  }
}
