// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordState {
  String? get password => throw _privateConstructorUsedError;
  String? get rePassword => throw _privateConstructorUsedError;
  int get ruleScore => throw _privateConstructorUsedError;
  bool get checkRepassword => throw _privateConstructorUsedError;
  List<RuleChangePass> get listRuleChangePass =>
      throw _privateConstructorUsedError;
  bool get showDeleteTextNewPassword => throw _privateConstructorUsedError;
  bool get showDeleteTextNewRePassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call(
      {String? password,
      String? rePassword,
      int ruleScore,
      bool checkRepassword,
      List<RuleChangePass> listRuleChangePass,
      bool showDeleteTextNewPassword,
      bool showDeleteTextNewRePassword});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? rePassword = freezed,
    Object? ruleScore = null,
    Object? checkRepassword = null,
    Object? listRuleChangePass = null,
    Object? showDeleteTextNewPassword = null,
    Object? showDeleteTextNewRePassword = null,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      rePassword: freezed == rePassword
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      ruleScore: null == ruleScore
          ? _value.ruleScore
          : ruleScore // ignore: cast_nullable_to_non_nullable
              as int,
      checkRepassword: null == checkRepassword
          ? _value.checkRepassword
          : checkRepassword // ignore: cast_nullable_to_non_nullable
              as bool,
      listRuleChangePass: null == listRuleChangePass
          ? _value.listRuleChangePass
          : listRuleChangePass // ignore: cast_nullable_to_non_nullable
              as List<RuleChangePass>,
      showDeleteTextNewPassword: null == showDeleteTextNewPassword
          ? _value.showDeleteTextNewPassword
          : showDeleteTextNewPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showDeleteTextNewRePassword: null == showDeleteTextNewRePassword
          ? _value.showDeleteTextNewRePassword
          : showDeleteTextNewRePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordStateImplCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$ChangePasswordStateImplCopyWith(_$ChangePasswordStateImpl value,
          $Res Function(_$ChangePasswordStateImpl) then) =
      __$$ChangePasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? password,
      String? rePassword,
      int ruleScore,
      bool checkRepassword,
      List<RuleChangePass> listRuleChangePass,
      bool showDeleteTextNewPassword,
      bool showDeleteTextNewRePassword});
}

/// @nodoc
class __$$ChangePasswordStateImplCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$ChangePasswordStateImpl>
    implements _$$ChangePasswordStateImplCopyWith<$Res> {
  __$$ChangePasswordStateImplCopyWithImpl(_$ChangePasswordStateImpl _value,
      $Res Function(_$ChangePasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? rePassword = freezed,
    Object? ruleScore = null,
    Object? checkRepassword = null,
    Object? listRuleChangePass = null,
    Object? showDeleteTextNewPassword = null,
    Object? showDeleteTextNewRePassword = null,
  }) {
    return _then(_$ChangePasswordStateImpl(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      rePassword: freezed == rePassword
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      ruleScore: null == ruleScore
          ? _value.ruleScore
          : ruleScore // ignore: cast_nullable_to_non_nullable
              as int,
      checkRepassword: null == checkRepassword
          ? _value.checkRepassword
          : checkRepassword // ignore: cast_nullable_to_non_nullable
              as bool,
      listRuleChangePass: null == listRuleChangePass
          ? _value._listRuleChangePass
          : listRuleChangePass // ignore: cast_nullable_to_non_nullable
              as List<RuleChangePass>,
      showDeleteTextNewPassword: null == showDeleteTextNewPassword
          ? _value.showDeleteTextNewPassword
          : showDeleteTextNewPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showDeleteTextNewRePassword: null == showDeleteTextNewRePassword
          ? _value.showDeleteTextNewRePassword
          : showDeleteTextNewRePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangePasswordStateImpl extends _ChangePasswordState {
  const _$ChangePasswordStateImpl(
      {this.password,
      this.rePassword,
      this.ruleScore = 0,
      this.checkRepassword = true,
      final List<RuleChangePass> listRuleChangePass = const [],
      this.showDeleteTextNewPassword = false,
      this.showDeleteTextNewRePassword = false})
      : _listRuleChangePass = listRuleChangePass,
        super._();

  @override
  final String? password;
  @override
  final String? rePassword;
  @override
  @JsonKey()
  final int ruleScore;
  @override
  @JsonKey()
  final bool checkRepassword;
  final List<RuleChangePass> _listRuleChangePass;
  @override
  @JsonKey()
  List<RuleChangePass> get listRuleChangePass {
    if (_listRuleChangePass is EqualUnmodifiableListView)
      return _listRuleChangePass;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listRuleChangePass);
  }

  @override
  @JsonKey()
  final bool showDeleteTextNewPassword;
  @override
  @JsonKey()
  final bool showDeleteTextNewRePassword;

  @override
  String toString() {
    return 'ChangePasswordState(password: $password, rePassword: $rePassword, ruleScore: $ruleScore, checkRepassword: $checkRepassword, listRuleChangePass: $listRuleChangePass, showDeleteTextNewPassword: $showDeleteTextNewPassword, showDeleteTextNewRePassword: $showDeleteTextNewRePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordStateImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rePassword, rePassword) ||
                other.rePassword == rePassword) &&
            (identical(other.ruleScore, ruleScore) ||
                other.ruleScore == ruleScore) &&
            (identical(other.checkRepassword, checkRepassword) ||
                other.checkRepassword == checkRepassword) &&
            const DeepCollectionEquality()
                .equals(other._listRuleChangePass, _listRuleChangePass) &&
            (identical(other.showDeleteTextNewPassword,
                    showDeleteTextNewPassword) ||
                other.showDeleteTextNewPassword == showDeleteTextNewPassword) &&
            (identical(other.showDeleteTextNewRePassword,
                    showDeleteTextNewRePassword) ||
                other.showDeleteTextNewRePassword ==
                    showDeleteTextNewRePassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      password,
      rePassword,
      ruleScore,
      checkRepassword,
      const DeepCollectionEquality().hash(_listRuleChangePass),
      showDeleteTextNewPassword,
      showDeleteTextNewRePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      __$$ChangePasswordStateImplCopyWithImpl<_$ChangePasswordStateImpl>(
          this, _$identity);
}

abstract class _ChangePasswordState extends ChangePasswordState {
  const factory _ChangePasswordState(
      {final String? password,
      final String? rePassword,
      final int ruleScore,
      final bool checkRepassword,
      final List<RuleChangePass> listRuleChangePass,
      final bool showDeleteTextNewPassword,
      final bool showDeleteTextNewRePassword}) = _$ChangePasswordStateImpl;
  const _ChangePasswordState._() : super._();

  @override
  String? get password;
  @override
  String? get rePassword;
  @override
  int get ruleScore;
  @override
  bool get checkRepassword;
  @override
  List<RuleChangePass> get listRuleChangePass;
  @override
  bool get showDeleteTextNewPassword;
  @override
  bool get showDeleteTextNewRePassword;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
