import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_text_icon_model.freezed.dart';

@freezed
class CheckTextIconModel with _$CheckTextIconModel {
  const CheckTextIconModel._();
  const factory CheckTextIconModel({
    String? stringCheck,
    Icon? iconCheck,
  }) = _CheckTextIconModel;
}
