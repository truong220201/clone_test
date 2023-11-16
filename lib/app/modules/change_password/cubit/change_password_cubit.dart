import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';
import 'package:msb_flutter/app/data/untils/extension/extension.dart';
import 'package:msb_flutter/app/modules/change_password/cubit/change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit() : super(const ChangePasswordState());
  initState() {
    _resetChecker();
    _validateRule();
  }

  _validateRule() {
    List<RuleChangePass> list = [
      RuleChangePass.ruleLeng,
      RuleChangePass.ruleLowCase,
      RuleChangePass.ruleUpperCase,
      RuleChangePass.ruleHaveNumber,
      RuleChangePass.ruleSpecialCharacter
    ];
    // debugPrint(RuleChangePass.ruleLeng.stringIcon.toString());
    emit(state.copyWith(listRuleChangePass: list));
  }

  setPassword(String password) {
    emit(state.copyWith(password: password));
    checkValidate(password);
    !_checkNull(state.rePassword) ? _checkRePassword() : null;
  }

  setRePassword(String rePassword) {
    emit(state.copyWith(rePassword: rePassword));
    _checkRePassword();
  }

  removeTextPassword() {
    emit(state.copyWith(password: null));
    checkValidate(null);
  }

  removeTextRePassword() {
    emit(state.copyWith(rePassword: null));
    checkValidate(state.rePassword);
  }

  checkValidate(String? text) {
    _checklength(text);
    _checkLowcase(text);
    _checkUppercase(text);
    _checkHasNumber(text);
    _checkHasSpecialCharacter(text);
    _validateRule();
    _ruleScore();
  }

  _checkRePassword() {
    String? password = state.password;
    String? rePassword = state.rePassword;
    password == rePassword
        ? emit(state.copyWith(checkRepassword: true))
        : emit(state.copyWith(checkRepassword: false));
  }

  _ruleScore() {
    int ruleScore = 0;
    !_checkNull(state.password) ? ruleScore += 1 : null;
    if (RuleChangePass.ruleLeng.stringIcon == CheckValid.valid) {
      RuleChangePass.ruleHaveNumber.stringIcon == CheckValid.valid
          ? ruleScore += 1
          : null;
      RuleChangePass.ruleLowCase.stringIcon == CheckValid.valid
          ? ruleScore += 1
          : null;
      RuleChangePass.ruleUpperCase.stringIcon == CheckValid.valid
          ? ruleScore += 1
          : null;
      RuleChangePass.ruleSpecialCharacter.stringIcon == CheckValid.valid
          ? ruleScore += 1
          : null;
    }

    emit(state.copyWith(ruleScore: ruleScore));
  }

  _resetChecker() {
    RuleChangePass.ruleLeng.stringIcon = CheckValid.uncheck;
    RuleChangePass.ruleHaveNumber.stringIcon = CheckValid.uncheck;
    RuleChangePass.ruleLowCase.stringIcon = CheckValid.uncheck;
    RuleChangePass.ruleSpecialCharacter.stringIcon = CheckValid.uncheck;
    RuleChangePass.ruleUpperCase.stringIcon = CheckValid.uncheck;
  }

  _checklength(String? text) {
    !_checkNull(text)
        ? {
            RuleChangePass.ruleLeng.stringRegexRule.hasMatch(text!)
                ? RuleChangePass.ruleLeng.stringIcon = CheckValid.valid
                : RuleChangePass.ruleLeng.stringIcon = CheckValid.invalid,
          }
        : RuleChangePass.ruleLeng.stringIcon = CheckValid.uncheck;
  }

  _checkLowcase(String? text) {
    !_checkNull(text)
        ? {
            RuleChangePass.ruleLowCase.stringRegexRule.hasMatch(text!)
                ? RuleChangePass.ruleLowCase.stringIcon = CheckValid.valid
                : RuleChangePass.ruleLowCase.stringIcon = CheckValid.invalid,
          }
        : RuleChangePass.ruleLowCase.stringIcon = CheckValid.uncheck;
  }

  _checkUppercase(String? text) {
    !_checkNull(text)
        ? {
            RuleChangePass.ruleUpperCase.stringRegexRule.hasMatch(text!)
                ? RuleChangePass.ruleUpperCase.stringIcon = CheckValid.valid
                : RuleChangePass.ruleUpperCase.stringIcon = CheckValid.invalid,
          }
        : RuleChangePass.ruleUpperCase.stringIcon = CheckValid.uncheck;
  }

  _checkHasNumber(String? text) {
    !_checkNull(text)
        ? {
            RuleChangePass.ruleHaveNumber.stringRegexRule.hasMatch(text!)
                ? RuleChangePass.ruleHaveNumber.stringIcon = CheckValid.valid
                : RuleChangePass.ruleHaveNumber.stringIcon = CheckValid.invalid,
          }
        : RuleChangePass.ruleHaveNumber.stringIcon = CheckValid.uncheck;
  }

  _checkHasSpecialCharacter(String? text) {
    !_checkNull(text)
        ? {
            RuleChangePass.ruleSpecialCharacter.stringRegexRule.hasMatch(text!)
                ? RuleChangePass.ruleSpecialCharacter.stringIcon =
                    CheckValid.valid
                : RuleChangePass.ruleSpecialCharacter.stringIcon =
                    CheckValid.invalid,
          }
        : RuleChangePass.ruleSpecialCharacter.stringIcon = CheckValid.uncheck;
  }

  bool _checkNull(String? text) {
    return text == null ? true : false;
  }

  dontShowCommentWhenDelete() {
    emit(state.copyWith(checkRepassword: true));
  }
}
