import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msb_flutter/app/data/model/info_model.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  factory HomeState(
      {List<InfoModel>? listInfo,
      List<InfoModel>? showingList,
      Map<String, List<InfoModel>>? statusList,
      @Default(true) bool isLoading,
      String? errorConnect,
      @Default(FilterHome.waiting) FilterHome filter}) = _HomeState;
}
