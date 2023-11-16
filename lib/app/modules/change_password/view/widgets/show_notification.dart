import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';
import 'package:msb_flutter/app/data/untils/extension/extension.dart';

class ShowNotification extends StatelessWidget {
  const ShowNotification({
    super.key,
    required this.checkValid,
    required this.text,
  });
  final CheckValid checkValid;
  final String text;

  @override
  Widget build(
    BuildContext context,
  ) {
    return _textIconNotification(text);
  }

  _textIconNotification(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svg/${checkValid.urlIcon}.svg",
            height: 16,
            width: 16,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyles.regular14r,
          ),
        ],
      ),
    );
  }
}
