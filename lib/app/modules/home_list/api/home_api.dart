import 'package:flutter/material.dart';
import 'package:msb_flutter/app/data/model/info_model.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class HomeApi {
  late List<InfoModel> listInfoModel;
  Future<Response> getResponseHomeDetail() async {
    final dio = Dio();
    const baseUrl = 'https://jsonplaceholder.typicode.com/posts';
    Response response;
    response = await dio.get(baseUrl);
    return response;
  }

  Future<List<InfoModel>> getHomeDetail() async {
    final dio = Dio();
    const baseUrl = 'https://jsonplaceholder.typicode.com/posts';
    Response response;

    try {
      response = await dio.get(baseUrl);
      List<dynamic> data = response.data;
      listInfoModel = data.map((json) => InfoModel.fromJson(json)).toList();

      return listInfoModel;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response?.data.toString());
        debugPrint(e.response?.headers.toString());
        debugPrint(e.response?.requestOptions.toString());
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
      rethrow;
    }
  }
}
