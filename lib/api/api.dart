import 'dart:async';
import 'package:dio/dio.dart';

import '../utils/http.dart';

// 获取 API 版本号
Future<Response> getVersion({Options options, CancelToken cancelToken}) async {
  Response response =
      await http.get('/version', options: options, cancelToken: cancelToken);
  return response;
}

// Player
Future<Response> player(String id,
    {Options options, CancelToken cancelToken}) async {
  Response response =
      await http.get('/player/$id', options: options, cancelToken: cancelToken);
  return response;
}

// Player Battles
Future<Response> playerBattles(String id,
    {Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/player/$id/battles',
      options: options, cancelToken: cancelToken);
  return response;
}

// Tournaments1k
Future<Response> tournaments1k(
    {Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/tournaments/1k',
      options: options, cancelToken: cancelToken);
  return response;
}

// Player Chests
Future<Response> playerChests(String id,
    {Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/player/$id/chests',
      options: options, cancelToken: cancelToken);
  return response;
}

// Top 200 Players
Future<Response> topPlayers({Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/top/players',
      options: options, cancelToken: cancelToken);
  return response;
}

// Popular Decks
Future<Response> popularDecks(
    {Options options, CancelToken cancelToken}) async {
  Response response = await http.get('/popular/decks',
      options: options,
      cancelToken: cancelToken,
      queryParameters: {"max": 10, "page": 0});
  return response;
}
