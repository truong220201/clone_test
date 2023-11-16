import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bar_checker_model.freezed.dart';

@freezed
class BarCheckerModel with _$BarCheckerModel {
  const BarCheckerModel._();
  const factory BarCheckerModel({
    String? stringCheck,
    Color? colorCheck,
  }) = _BarCheckerModel;
}
