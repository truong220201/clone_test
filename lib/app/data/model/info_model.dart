import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_model.freezed.dart';

part 'info_model.g.dart';

@freezed
class InfoModel with _$InfoModel {
  const InfoModel._();
  const factory InfoModel(
      {int? userId,
      int? id,
      String? title,
      String? body,
      String? url}) = _InfoModel;
  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
}
