import 'package:flutter/material.dart';

class AlertCosumer extends StatelessWidget {
  const AlertCosumer({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text(content),
        ],
      ),
    ));
  }
}
