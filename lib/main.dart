import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:msb_flutter/app/modules/change_password/cubit/change_password_cubit.dart';
import 'package:msb_flutter/app/modules/change_password/view/change_password_view.dart';
import 'package:msb_flutter/app/modules/home_list/api/home_api.dart';
import 'package:msb_flutter/app/modules/home_list/cubit/home_cubit.dart';
import 'package:msb_flutter/app/modules/home_list/repository/home_repository.dart';
import 'package:msb_flutter/app/modules/home_list/view/home_view.dart';
import 'package:msb_flutter/app/modules/login/view/login_view.dart';
import 'package:msb_flutter/app/modules/register/cubit/register_cubit.dart';
import 'package:msb_flutter/app/modules/register/view/register_view.dart';

import 'app/modules/login/cubit/login_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => const LoginProvider(),
        ),
        GetPage(
          name: '/register',
          page: () => const RegisterProvider(),
        ),
        GetPage(
          name: '/changePassword',
          page: () => const ChangePasswordProvider(),
        ),
        GetPage(
          name: '/homeList',
          page: () => const HomeRepoProvider(),
        )
      ],
    );
  }
}

class LoginProvider extends StatelessWidget {
  const LoginProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(), child: const Login());
  }
}

class RegisterProvider extends StatelessWidget {
  const RegisterProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RegisterCubit(), child: const Register());
  }
}

class ChangePasswordProvider extends StatelessWidget {
  const ChangePasswordProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ChangePasswordCubit()..initState(),
        child: const ChangePassword());
  }
}

class HomeProvider extends StatelessWidget {
  const HomeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            HomeCubit(context.read<HomeRepository>())..initData(),
        child: const HomeView());
  }
}

class HomeRepoProvider extends StatelessWidget {
  const HomeRepoProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<HomeRepository>(
      create: (context) => HomeRepository(HomeApi()),
      child: const HomeProvider(),
    );
  }
}
