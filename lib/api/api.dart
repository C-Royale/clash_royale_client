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

// Player Battles
Future<Response> playerBattles(String id,
    {dynamic data, Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/player/$id/battles',
      data: data, options: options, cancelToken: cancelToken);
  return response;
}

// Tournaments1k
Future<Response> tournaments1k(
    {dynamic data, Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/tournaments/1k',
      data: data, options: options, cancelToken: cancelToken);
  return response;
}

// Player Chests
Future<Response> playerChests(String id,
    {dynamic data, Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/player/$id/chests',
      data: data, options: options, cancelToken: cancelToken);
  return response;
}

// Top 200 Players
Future<Response> topPlayers(
    {dynamic data, Options options, CancelToken cancelToken}) async {
  Response response = await http.get('top/players',
      data: data, options: options, cancelToken: cancelToken);
  return response;
}
