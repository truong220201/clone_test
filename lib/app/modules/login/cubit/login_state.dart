import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    String? phoneNumber,
    String? password,
    ErrorValidate? errorPhoneNumberValidate,
    ErrorValidate? errorPasswordValidate,
    @Default(false) bool showPass,
    @Default(false) bool enableButton,
  }) = _LoginState;
}
