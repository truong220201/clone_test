import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msb_flutter/app/data/model/info_model.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState(
      {List<InfoModel>? listInfo,
      List<InfoModel>? showingList,
      List<InfoModel>? waitingList,
      List<InfoModel>? approveList,
      List<InfoModel>? refuseList,
      @Default(true) bool isLoading,
      String? errorConnect,
      @Default(FilterHome.waiting) FilterHome filter}) = _HomeState;
}
