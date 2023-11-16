import 'package:flutter/material.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/values/text_styles.dart';
import 'package:msb_flutter/app/data/untils/extension/extension.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      this.content,
      required this.level,
      this.reason,
      required this.date,
      required this.money});
  final int money;
  final String? content;
  final int level;
  final String? reason;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 119,
        margin: const EdgeInsets.only(bottom: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.colorFFFFFF,
            boxShadow: [_shadow()],
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _tradeMoney(money.toString()),
                _detailTrade(content: content, level: level, reason: reason),
                _date(date)
              ],
            )),
          ),
        ));
  }

  _miniSpace() {
    return const SizedBox(
      height: 5,
    );
  }

  _tradeMoney(String money) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Chuyển tiền',
              style: TextStyles.medium14s,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '${money}000000'.toNumberString(),
                    style: TextStyles.medium16s
                        .copyWith(color: AppColors.color0D1326),
                  ),
                  TextSpan(
                    text: ' VND',
                    style: TextStyles.medium16s.copyWith(
                        color: AppColors.color616161,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  _detailTrade({String? content, required int level, String? reason}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          content ?? '',
          overflow: TextOverflow.ellipsis,
          style: TextStyles.regular14r,
        ),
        _miniSpace(),
        _titleAndContent('Level duyet: ', '$level/1'),
        _miniSpace(),
        _titleAndContent('Ly do: ', reason ?? ''),
      ],
    );
  }

  _titleAndContent(String title, String content) {
    return RichText(
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: title,
              style: TextStyles.regular14r,
            ),
            TextSpan(
              text: content,
              style: TextStyles.medium14s,
            ),
          ],
        ));
  }

  _date(String date) {
    return Column(
      children: [
        Text(
          '$date . 11:30 : 15/11/2023',
          style: TextStyles.medium10s,
        )
      ],
    );
  }

  _shadow() {
    return BoxShadow(
      color: AppColors.color616161.withOpacity(0.1),
      offset: const Offset(
        0,
        2.0,
      ),
      blurRadius: 5.0,
      spreadRadius: 0,
    );
  }
}
