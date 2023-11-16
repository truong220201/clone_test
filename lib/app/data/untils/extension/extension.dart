import 'package:intl/intl.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';

extension FilterHomeExtension on FilterHome {
  String get getString {
    String stringStatus = '';
    switch (this) {
      case FilterHome.waiting:
        stringStatus = 'Chờ duyệt';
        break;
      case FilterHome.approved:
        stringStatus = 'Đã duyệt';
        break;
      case FilterHome.refuse:
        stringStatus = 'Từ chối';
        break;
      default:
        stringStatus = '';
        break;
    }
    return stringStatus;
  }

  static final boolFilter = Expando<bool>();
  bool get hasCheck => boolFilter[this] ?? false;
  set hasCheck(bool check) {
    boolFilter[this] = check;
  }
}

extension CheckValidExtension on CheckValid {
  String get urlIcon {
    String iconReturn = '';
    switch (this) {
      case CheckValid.invalid:
        iconReturn = 'ic_check_invalid';
        break;
      case CheckValid.valid:
        iconReturn = 'ic_check_valid';
        break;
      case CheckValid.uncheck:
        iconReturn = 'ic_uncheck';
        break;
      default:
        iconReturn = '';
        break;
    }
    return iconReturn;
  }
}

extension RuleChangePassExtension on RuleChangePass {
  String get stringRule {
    String returnRule = '';
    switch (this) {
      case RuleChangePass.ruleLeng:
        returnRule = 'Mật khẩu phải từ 6 - 20 ký tự';
        break;
      case RuleChangePass.ruleLowCase:
        returnRule = 'Có ít nhất một chữ viết thường';
        break;
      case RuleChangePass.ruleUpperCase:
        returnRule = 'Có ít nhất một chữ viết hoa';
        break;
      case RuleChangePass.ruleHaveNumber:
        returnRule = 'Có ít nhất một chữ số';
        break;
      case RuleChangePass.ruleSpecialCharacter:
        returnRule = 'Có ít nhất một trong các ký tự đặc biệt (@, _, ., !, #)';
        break;
      default:
        returnRule = '';
        break;
    }
    return returnRule;
  }

  RegExp get stringRegexRule {
    RegExp rexReturn = RegExp(r'');
    switch (this) {
      case RuleChangePass.ruleLeng:
        rexReturn = RegExp(r'^.{6,20}$');
        break;
      case RuleChangePass.ruleLowCase:
        rexReturn = RegExp(r'[a-z]');
        break;
      case RuleChangePass.ruleUpperCase:
        rexReturn = RegExp(r'[A-Z]');
        break;
      case RuleChangePass.ruleHaveNumber:
        rexReturn = RegExp(r'[0-9]');
        break;
      case RuleChangePass.ruleSpecialCharacter:
        rexReturn = RegExp(r'[!@#%^&*(),.?":{}|<>]');
        break;
      default:
        rexReturn = RegExp(r'');
        break;
    }
    return rexReturn;
  }

  static final stringIconParameter = Expando<CheckValid>();
  CheckValid get stringIcon => stringIconParameter[this] ?? CheckValid.uncheck;
  set stringIcon(CheckValid valid) {
    stringIconParameter[this] = valid;
  }
}

extension NumberStringExtension on String {
  String? toNumberString() {
    var toIntText = int.tryParse(this);
    if (toIntText == null) {
      return '';
    }
    var formatter = NumberFormat.decimalPattern('vi_VN');
    return formatter.format(toIntText).replaceAll('.', ',');
  }
}
