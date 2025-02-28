import 'dart:developer';

import 'package:apifetch/model.dart';
import 'package:dio/dio.dart';

class Services {
  Dio dio = Dio();
  final api = "https://656af722dac3630cf7278113.mockapi.io/machinetask";

  Future<List<idmodel>> getdata() async {
    try {
      final response = await dio.get(api);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((json) => idmodel.fromJson(json)).toList();
      }
    } on DioException catch (e) {
      log(e.toString());
    }
    return [];
  }
}
