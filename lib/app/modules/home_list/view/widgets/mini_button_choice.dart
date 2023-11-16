import 'package:flutter/material.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';
import 'package:msb_flutter/app/data/untils/extension/extension.dart';

class MiniButtonChoice extends StatelessWidget {
  const MiniButtonChoice(
      {super.key,
      required this.filter,
      required this.onPress,
      required this.hasCheck});
  final FilterHome filter;
  final Function onPress;
  final bool hasCheck;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onPress(),
        child: Container(
          height: 30,
          decoration: BoxDecoration(
              color: hasCheck ? AppColors.colorFB5E22 : AppColors.colorFFFFFF,
              borderRadius: const BorderRadius.all(Radius.circular(81))),
          alignment: Alignment.center,
          child: Text(
            filter.getString,
            style: TextStyles.regular12r.copyWith(
                color:
                    hasCheck ? AppColors.colorFFFFFF : AppColors.color0D1326),
          ),
        ),
      ),
    );
  }
}
