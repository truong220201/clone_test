import 'package:flutter/material.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/data/model/bar_checker_model.dart';
import 'package:msb_flutter/app/modules/change_password/view/widgets/password_streng_checker.dart';

class PasswordStrengWithText extends StatelessWidget {
  const PasswordStrengWithText({super.key, required this.numValid});
  final int numValid;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      PasswordStrengthChecker(
        validateLength: numValid,
        color: barChecker(numValid).colorCheck!,
      ),
      const SizedBox(
        width: 9,
      ),
      Text(
        barChecker(numValid).stringCheck ?? '',
        style: TextStyles.regular12r.copyWith(
          color: barChecker(numValid).colorCheck,
        ),
      )
    ]);
  }

  BarCheckerModel barChecker(int numCheck) {
    BarCheckerModel checker = const BarCheckerModel(
        colorCheck: AppColors.color9E9E9E, stringCheck: '');
    if (numCheck >= 1 && numCheck < 3) {
      checker = BarCheckerModel(
          colorCheck: validateColor(ValidateStrength.bad),
          stringCheck: validateString(ValidateStrength.bad));
    } else if (numCheck >= 3 && numCheck <= 4) {
      checker = BarCheckerModel(
          colorCheck: validateColor(ValidateStrength.medium),
          stringCheck: validateString(ValidateStrength.medium));
    } else if (numCheck == 5) {
      checker = BarCheckerModel(
          colorCheck: validateColor(ValidateStrength.strong),
          stringCheck: validateString(ValidateStrength.strong));
    }

    return checker;
  }

  String validateString(ValidateStrength value) {
    String paswordMessage = '';
    switch (value) {
      case ValidateStrength.strong:
        paswordMessage = 'Mạnh';
        break;
      case ValidateStrength.medium:
        paswordMessage = 'Trung bình';
        break;
      case ValidateStrength.bad:
        paswordMessage = 'Yếu';
        break;

      default:
        paswordMessage = '';
    }
    return paswordMessage;
  }

  Color validateColor(ValidateStrength value) {
    Color paswordMessage = AppColors.colorFFFFFF;
    switch (value) {
      case ValidateStrength.strong:
        paswordMessage = AppColors.color20BA26;
        break;
      case ValidateStrength.medium:
        paswordMessage = AppColors.colorFB5E22;
        break;
      case ValidateStrength.bad:
        paswordMessage = AppColors.colorE80707;
        break;

      default:
        paswordMessage = AppColors.colorFFFFFF;
    }
    return paswordMessage;
  }
}
