import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msb_flutter/app/data/model/info_model.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';
import 'package:msb_flutter/app/modules/home_list/cubit/home_state.dart';
import 'package:msb_flutter/app/modules/home_list/repository/home_repository.dart';
import 'package:collection/collection.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepository) : super(HomeState());

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
            filter: FilterHome.waiting,
            showingList: state.statusList?['waiting_list']));
        break;
      case (2):
        emit(state.copyWith(
            filter: FilterHome.approved,
            showingList: state.statusList?['approve_list']));
        break;
      case (3):
        emit(state.copyWith(
            filter: FilterHome.refuse,
            showingList: state.statusList?['refuse_list']));
        break;
      default:
        break;
    }
  }

  _addList(List<InfoModel>? list) {
    Map<String, List<InfoModel>> statusListTemp = {
      "waiting_list": <InfoModel>[],
      "approve_list": <InfoModel>[],
      "refuse_list": <InfoModel>[],
    };

    // statusListTemp = state.statusList;

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
    statusListTemp['waiting_list'] = waitingList;
    statusListTemp['approve_list'] = approveList;
    statusListTemp['refuse_list'] = refuseList;

    emit(state.copyWith(statusList: statusListTemp, showingList: waitingList));
  }

  _offLoading() {
    emit(state.copyWith(isLoading: false));
  }
}
