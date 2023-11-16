import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msb_flutter/app/core/values/regex.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  bool validatePhoneNumber(String? number) {
    emit(state.copyWith(
        phoneNumber: number,
        errorPhoneNumberValidate: _phoneNumberValidator(number)));
    if (_phoneNumberValidator(number) == null) {
      return true;
    }
    return false;
  }

  bool validatePassword(String? password) {
    emit(state.copyWith(
        password: password,
        errorPasswordValidate: _passwordValidator(password)));
    if (_passwordValidator(password) == null) {
      return true;
    }
    return false;
  }

  void checkFieldSubmit() {
    validatePhoneNumber(state.phoneNumber);
    validatePassword(state.password);
    if (validatePhoneNumber(state.phoneNumber) &&
        validatePassword(state.password)) {
      emit(state.copyWith(enableButton: true));
    }
    emit(state.copyWith(enableButton: false));
  }

  void setShowPass() {
    emit(state.copyWith(showPass: !state.showPass));
  }

  String? errorName(ErrorValidate? error) {
    switch (error) {
      case ErrorValidate.errorFormat:
        return 'Định dạng không đúng';
      case ErrorValidate.errorLength:
        return 'Độ dài không khớp';
      case ErrorValidate.errorEmpty:
        return 'Không được để trống!';
      default:
        return null;
    }
  }

  bool _isNumber(String number) {
    int? num = int.tryParse(number);
    return num != null ? true : false;
  }

  ErrorValidate? _errorEmpty(String? value) {
    if (value?.isEmpty ?? true) {
      return ErrorValidate.errorEmpty;
    }
    return null;
  }

  ErrorValidate? _errorLength(String? value) {
    bool valid = !Regex.regexLength.hasMatch(value!);
    if (valid) {
      return ErrorValidate.errorLength;
    }
    return null;
  }

  ErrorValidate? _errorFormat(String? value) {
    bool valid = !Regex.regexFormat.hasMatch(value!);
    if (valid) {
      return ErrorValidate.errorFormat;
    }
    return null;
  }

  ErrorValidate? _phoneNumberValidator(String? value) {
    return _errorEmpty(value) ?? _errorLength(value) ?? _errorFormat(value);
  }

  ErrorValidate? _passwordValidator(String? value) {
    return _errorEmpty(value);
  }
}
