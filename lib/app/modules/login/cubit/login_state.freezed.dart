// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  ErrorValidate? get errorPhoneNumberValidate =>
      throw _privateConstructorUsedError;
  ErrorValidate? get errorPasswordValidate =>
      throw _privateConstructorUsedError;
  bool get showPass => throw _privateConstructorUsedError;
  bool get enableButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String? phoneNumber,
      String? password,
      ErrorValidate? errorPhoneNumberValidate,
      ErrorValidate? errorPasswordValidate,
      bool showPass,
      bool enableButton});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? errorPhoneNumberValidate = freezed,
    Object? errorPasswordValidate = freezed,
    Object? showPass = null,
    Object? enableButton = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      errorPhoneNumberValidate: freezed == errorPhoneNumberValidate
          ? _value.errorPhoneNumberValidate
          : errorPhoneNumberValidate // ignore: cast_nullable_to_non_nullable
              as ErrorValidate?,
      errorPasswordValidate: freezed == errorPasswordValidate
          ? _value.errorPasswordValidate
          : errorPasswordValidate // ignore: cast_nullable_to_non_nullable
              as ErrorValidate?,
      showPass: null == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as bool,
      enableButton: null == enableButton
          ? _value.enableButton
          : enableButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phoneNumber,
      String? password,
      ErrorValidate? errorPhoneNumberValidate,
      ErrorValidate? errorPasswordValidate,
      bool showPass,
      bool enableButton});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? errorPhoneNumberValidate = freezed,
    Object? errorPasswordValidate = freezed,
    Object? showPass = null,
    Object? enableButton = null,
  }) {
    return _then(_$LoginStateImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      errorPhoneNumberValidate: freezed == errorPhoneNumberValidate
          ? _value.errorPhoneNumberValidate
          : errorPhoneNumberValidate // ignore: cast_nullable_to_non_nullable
              as ErrorValidate?,
      errorPasswordValidate: freezed == errorPasswordValidate
          ? _value.errorPasswordValidate
          : errorPasswordValidate // ignore: cast_nullable_to_non_nullable
              as ErrorValidate?,
      showPass: null == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as bool,
      enableButton: null == enableButton
          ? _value.enableButton
          : enableButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl extends _LoginState {
  const _$LoginStateImpl(
      {this.phoneNumber,
      this.password,
      this.errorPhoneNumberValidate,
      this.errorPasswordValidate,
      this.showPass = false,
      this.enableButton = false})
      : super._();

  @override
  final String? phoneNumber;
  @override
  final String? password;
  @override
  final ErrorValidate? errorPhoneNumberValidate;
  @override
  final ErrorValidate? errorPasswordValidate;
  @override
  @JsonKey()
  final bool showPass;
  @override
  @JsonKey()
  final bool enableButton;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, password: $password, errorPhoneNumberValidate: $errorPhoneNumberValidate, errorPasswordValidate: $errorPasswordValidate, showPass: $showPass, enableButton: $enableButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(
                    other.errorPhoneNumberValidate, errorPhoneNumberValidate) ||
                other.errorPhoneNumberValidate == errorPhoneNumberValidate) &&
            (identical(other.errorPasswordValidate, errorPasswordValidate) ||
                other.errorPasswordValidate == errorPasswordValidate) &&
            (identical(other.showPass, showPass) ||
                other.showPass == showPass) &&
            (identical(other.enableButton, enableButton) ||
                other.enableButton == enableButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, password,
      errorPhoneNumberValidate, errorPasswordValidate, showPass, enableButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {final String? phoneNumber,
      final String? password,
      final ErrorValidate? errorPhoneNumberValidate,
      final ErrorValidate? errorPasswordValidate,
      final bool showPass,
      final bool enableButton}) = _$LoginStateImpl;
  const _LoginState._() : super._();

  @override
  String? get phoneNumber;
  @override
  String? get password;
  @override
  ErrorValidate? get errorPhoneNumberValidate;
  @override
  ErrorValidate? get errorPasswordValidate;
  @override
  bool get showPass;
  @override
  bool get enableButton;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
