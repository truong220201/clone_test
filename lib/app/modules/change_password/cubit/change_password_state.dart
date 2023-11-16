import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';

part 'change_password_state.freezed.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const ChangePasswordState._();
  const factory ChangePasswordState({
    String? password,
    String? rePassword,
    @Default(0) int ruleScore,
    @Default(true) bool checkRepassword,
    @Default([]) List<RuleChangePass> listRuleChangePass,
    @Default(false) bool showDeleteTextNewPassword,
    @Default(false) bool showDeleteTextNewRePassword,
  }) = _ChangePasswordState;
}
