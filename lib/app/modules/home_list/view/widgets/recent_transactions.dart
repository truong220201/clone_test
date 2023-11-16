import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/modules/home_list/view/widgets/popup_list_actions.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalTreeViewRequest(context),
      child: Container(
        height: 40,
        decoration: const BoxDecoration(
            color: AppColors.colorFFFFFF,
            borderRadius: BorderRadius.all(Radius.circular(67))),
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Giao dịch gần đây',
                style:
                    TextStyles.medium14s.copyWith(color: AppColors.color0D1326),
              ),
              SvgPicture.asset(
                "assets/svg/ic_filter.svg",
                height: 20,
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showModalTreeViewRequest(
    BuildContext context,
  ) async {
    await showGeneralDialog(
      context: context,
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, _, __) {
        return const PopupListActions(
          title: 'StringConstants.doSomething',
        );
      },
      transitionBuilder: (_, animation1, __, child) {
        return SlideTransition(
          position: Tween(
            begin: const Offset(0, 1),
            end: const Offset(0, 0),
          ).animate(animation1),
          child: child,
        );
      },
    );
  }
}
