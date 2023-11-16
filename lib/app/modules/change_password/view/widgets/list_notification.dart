import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';
import 'package:msb_flutter/app/data/untils/extension/extension.dart';
import 'package:msb_flutter/app/modules/change_password/cubit/change_password_cubit.dart';
import 'package:msb_flutter/app/modules/change_password/cubit/change_password_state.dart';
import 'package:msb_flutter/app/modules/change_password/view/widgets/show_notification.dart';

class ListNotification extends StatelessWidget {
  const ListNotification({
    super.key,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    return BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
        builder: (context, state) {
      List<RuleChangePass> listRule = state.listRuleChangePass;
      return Column(
        children: _listCheckerNotification(listRule),
      );
    });
  }

  _listCheckerNotification(List<RuleChangePass> listRule) {
    return <Widget>[
      for (RuleChangePass i in listRule)
        _checkerNotification(i.stringRule, i.stringIcon)
    ];
  }

  _checkerNotification(String text, CheckValid valid) {
    return ShowNotification(text: text, checkValid: valid);
  }
}
