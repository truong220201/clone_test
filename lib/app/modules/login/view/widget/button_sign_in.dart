import 'package:flutter/widgets.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/core/widgets/custom_buttom.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({super.key, required this.func});
  final Function func;

  @override
  Widget build(
    BuildContext context,
  ) {
    return CustomButton(
      buttonSize: ButtonSize.large,
      title: 'Đăng nhập',
      onTap: () => func(),
      backgroundColor: AppColors.colorFB5E22,
      fontStyle: TextStyles.medium16s,
      textColor: AppColors.colorFFFFFF,
      textSize: 10,
    );
  }
}
