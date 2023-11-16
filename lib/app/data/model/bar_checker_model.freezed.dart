// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bar_checker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BarCheckerModel {
  String? get stringCheck => throw _privateConstructorUsedError;
  Color? get colorCheck => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BarCheckerModelCopyWith<BarCheckerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarCheckerModelCopyWith<$Res> {
  factory $BarCheckerModelCopyWith(
          BarCheckerModel value, $Res Function(BarCheckerModel) then) =
      _$BarCheckerModelCopyWithImpl<$Res, BarCheckerModel>;
  @useResult
  $Res call({String? stringCheck, Color? colorCheck});
}

/// @nodoc
class _$BarCheckerModelCopyWithImpl<$Res, $Val extends BarCheckerModel>
    implements $BarCheckerModelCopyWith<$Res> {
  _$BarCheckerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringCheck = freezed,
    Object? colorCheck = freezed,
  }) {
    return _then(_value.copyWith(
      stringCheck: freezed == stringCheck
          ? _value.stringCheck
          : stringCheck // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCheck: freezed == colorCheck
          ? _value.colorCheck
          : colorCheck // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarCheckerModelImplCopyWith<$Res>
    implements $BarCheckerModelCopyWith<$Res> {
  factory _$$BarCheckerModelImplCopyWith(_$BarCheckerModelImpl value,
          $Res Function(_$BarCheckerModelImpl) then) =
      __$$BarCheckerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? stringCheck, Color? colorCheck});
}

/// @nodoc
class __$$BarCheckerModelImplCopyWithImpl<$Res>
    extends _$BarCheckerModelCopyWithImpl<$Res, _$BarCheckerModelImpl>
    implements _$$BarCheckerModelImplCopyWith<$Res> {
  __$$BarCheckerModelImplCopyWithImpl(
      _$BarCheckerModelImpl _value, $Res Function(_$BarCheckerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringCheck = freezed,
    Object? colorCheck = freezed,
  }) {
    return _then(_$BarCheckerModelImpl(
      stringCheck: freezed == stringCheck
          ? _value.stringCheck
          : stringCheck // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCheck: freezed == colorCheck
          ? _value.colorCheck
          : colorCheck // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$BarCheckerModelImpl extends _BarCheckerModel {
  const _$BarCheckerModelImpl({this.stringCheck, this.colorCheck}) : super._();

  @override
  final String? stringCheck;
  @override
  final Color? colorCheck;

  @override
  String toString() {
    return 'BarCheckerModel(stringCheck: $stringCheck, colorCheck: $colorCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarCheckerModelImpl &&
            (identical(other.stringCheck, stringCheck) ||
                other.stringCheck == stringCheck) &&
            (identical(other.colorCheck, colorCheck) ||
                other.colorCheck == colorCheck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stringCheck, colorCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarCheckerModelImplCopyWith<_$BarCheckerModelImpl> get copyWith =>
      __$$BarCheckerModelImplCopyWithImpl<_$BarCheckerModelImpl>(
          this, _$identity);
}

abstract class _BarCheckerModel extends BarCheckerModel {
  const factory _BarCheckerModel(
      {final String? stringCheck,
      final Color? colorCheck}) = _$BarCheckerModelImpl;
  const _BarCheckerModel._() : super._();

  @override
  String? get stringCheck;
  @override
  Color? get colorCheck;
  @override
  @JsonKey(ignore: true)
  _$$BarCheckerModelImplCopyWith<_$BarCheckerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
