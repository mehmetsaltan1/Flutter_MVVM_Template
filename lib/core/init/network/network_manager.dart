import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter_mvvm_template/core/base/model/base_error.dart';
import 'package:flutter_mvvm_template/core/constants/app/enums/locale_keys_enum.dart';
import 'package:flutter_mvvm_template/core/init/cache/locale_manager.dart';

class NetworkManger {
  static NetworkManger _instance = NetworkManger._init();
  static NetworkManger get instance {
    if (_instance == null) _instance = NetworkManger._init();
    return _instance;
  }

  NetworkManger._init() {
    final baseOptions = BaseOptions(
      baseUrl: "https://jsonplaceholder.typicode.com",
      headers: {
        "val": LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)
      },
    );
    _dio = Dio(baseOptions);
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) {
        return BaseError(e.message);
      },
    ));
  }
  Dio _dio;
  void dioGet()<T>(String path,T model) async {
  final response =await _dio.get(path);
  switch (response.statusCode) {
    case HttpStatus.ok:
      final responseBody=response.data;
      if (responseBody is List) {
        
      }
      else if (responseBody is Map) {
        
      }
      else return responseBody;
      break;
    default:
  }
  }
}

