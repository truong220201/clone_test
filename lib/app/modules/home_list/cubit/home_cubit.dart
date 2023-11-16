import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msb_flutter/app/data/model/info_model.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';
import 'package:msb_flutter/app/modules/home_list/cubit/home_state.dart';
import 'package:msb_flutter/app/modules/home_list/repository/home_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepository) : super(const HomeState());

  final HomeRepository _homeRepository;
  Future<void> initData() async {
    List<InfoModel>? listInfo = await _getData();
    emit(state.copyWith(listInfo: listInfo));
    await _addList(state.listInfo);
    await _offLoading();
  }

  Future<List<InfoModel>?> _getData() async {
    List<InfoModel>? listInfoModel;

    try {
      Response response = await _homeRepository.getResponseHomeDetail();
      List<dynamic> data = response.data;
      listInfoModel = data.map((json) => InfoModel.fromJson(json)).toList();
      _errorConnect(null);
      return listInfoModel;
    } on DioException catch (e) {
      debugPrint(e.requestOptions.toString());
      debugPrint(e.message);
      _errorConnect(e.message);
      // rethrow;
    }
    return listInfoModel;
  }

  _errorConnect(String? error) {
    emit(state.copyWith(errorConnect: error));
  }

  changeStatusFilter(int valueChoice) {
    switch (valueChoice) {
      case (1):
        emit(state.copyWith(
            filter: FilterHome.waiting, showingList: state.waitingList));
        break;
      case (2):
        emit(state.copyWith(
            filter: FilterHome.approved, showingList: state.approveList));
        break;
      case (3):
        emit(state.copyWith(
            filter: FilterHome.refuse, showingList: state.refuseList));
        break;
      default:
        break;
    }
  }

  _addList(List<InfoModel>? list) {
    List<InfoModel> waitingList = [];
    List<InfoModel> approveList = [];
    List<InfoModel> refuseList = [];
    if (list != null) {
      for (InfoModel i in list) {
        if (i.userId == 1) {
          waitingList.add(i);
        } else if (i.userId == 2) {
          approveList.add(i);
        } else if (i.userId == 3) {
          refuseList.add(i);
        }
      }
    }
    emit(state.copyWith(
        waitingList: waitingList,
        refuseList: refuseList,
        approveList: approveList,
        showingList: waitingList));
  }

  _offLoading() {
    emit(state.copyWith(isLoading: false));
  }
}
