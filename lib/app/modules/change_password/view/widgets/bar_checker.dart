import 'package:flutter/material.dart';

class BarChecker extends StatelessWidget {
  const BarChecker({super.key, required this.colorBar});
  final Color colorBar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 4,
          decoration: BoxDecoration(
              color: colorBar,
              borderRadius: const BorderRadius.all(
                Radius.circular(43),
              )),
        ),
        const SizedBox(
          width: 4,
        ),
      ],
    );
  }
}
