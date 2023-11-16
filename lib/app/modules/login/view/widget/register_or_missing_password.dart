import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';

class RegisterOrMissingPassWord extends StatelessWidget {
  const RegisterOrMissingPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Get.toNamed('register'),
      child: Container(
          padding: const EdgeInsets.only(bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Get.toNamed('register'),
                child: const Text(
                  'Đăng ký',
                  style: TextStyles.regular12r,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              const Text('|', style: TextStyles.regular12r),
              const SizedBox(
                width: 2,
              ),
              TextButton(
                  onPressed: () => Get.toNamed('changePassword'),
                  child:
                      const Text('Quên mật khẩu', style: TextStyles.regular12r))
            ],
          )),
    );
  }
}
