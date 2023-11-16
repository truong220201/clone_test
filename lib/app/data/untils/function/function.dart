import 'package:flutter/material.dart';
import 'package:msb_flutter/app/core/widgets/custom_alert.dart';

abstract class FunctionConsumer {
  static Future<void> showDialogConsumer(
      String content, BuildContext contextE) async {
    return showDialog<void>(
        context: contextE,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertCosumer(content: content);
        });
  }
}
