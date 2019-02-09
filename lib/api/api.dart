import 'dart:async';
import 'package:dio/dio.dart';

import '../utils/http.dart';

// 获取 API 版本号
Future<Response> getVersion(
    {dynamic data, Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/version',
      data: data, options: options, cancelToken: cancelToken);
  return response;
}

// Player
Future<Response> player(String id,
    {dynamic data, Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/player/$id',
      data: data, options: options, cancelToken: cancelToken);
  return response;
}
