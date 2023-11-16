import 'package:dio/dio.dart';

import '../api/home_api.dart';

class HomeRepository {
  final HomeApi _api;
  HomeRepository(this._api);
  Future<Response> getResponseHomeDetail() async {
    Response response = await _api.getResponseHomeDetail();
    return response;
  }
}
