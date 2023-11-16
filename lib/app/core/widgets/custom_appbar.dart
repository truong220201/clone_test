import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(63.0),
      child: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: SvgPicture.asset(
            "assets/svg/ic_back_arrow.svg",
            height: 27,
            width: 27,
          ),
        ),
        centerTitle: true,
        titleSpacing: 0,
        title: Text(
          title ?? '',
          style: TextStyles.medium20s,
        ),
        backgroundColor: AppColors.colorTransparent,
        elevation: 0.0,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(63);
}
