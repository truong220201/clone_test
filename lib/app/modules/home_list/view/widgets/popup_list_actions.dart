import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/core/widgets/custom_buttom.dart';
import 'package:msb_flutter/app/modules/login/view/widget/text_field.dart';

class PopupListActions extends StatelessWidget {
  const PopupListActions({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: const EdgeInsets.all(0),
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 469,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              color: AppColors.colorFFFFFF,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: _popUpListActionItem(
            onTap: () async {
              Navigator.of(context).pop();
            },
          ),
        ));
  }

  Widget _popUpListActionItem({
    required Function onTap,
  }) {
    return InkWell(
      onTap: () => onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              const Text('Loc giao dich'),
              SvgPicture.asset('assets/svg/ic_exit.svg')
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          _textfield(),
          _textfield(),
          _textfield(),
          _textfield(),
          CustomButton(
            buttonSize: ButtonSize.large,
            title: 'Đăng nhập',
            onTap: () => (),
            backgroundColor: AppColors.colorFB5E22,
            fontStyle: TextStyles.medium16s,
            textColor: AppColors.colorFFFFFF,
            textSize: 10,
          )
        ],
      ),
    );
  }

  _textfield() {
    return TextFieldLogin(
        validateText: '',
        hint: 'Mật khẩu',
        isPass: true,
        showPass: true,
        controller: TextEditingController(),
        onChanged: (value) => (value),
        showPassFunc: () => ());
  }
}
