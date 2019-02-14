import 'dart:async';
import 'package:dio/dio.dart';

BaseOptions options = BaseOptions(
  baseUrl: 'https://api.royaleapi.com',
  connectTimeout: 5000,
  receiveTimeout: 3000,
  headers: {
    'auth':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjI5NSwiaWRlbiI6IjUzNzIyNjkzNDAyODA3NTAxMCIsIm1kIjp7InVzZXJuYW1lIjoibXk5MDc0Iiwia2V5VmVyc2lvbiI6MywiZGlzY3JpbWluYXRvciI6IjE3NTAifSwidHMiOjE1NDkzNzEwNTkyNzd9.ot4ofXr4jKIKgXqR0Mop0fHoJa5rpVMffjcoVvbLbB8'
  },
  extra: {"noInterceptor": false},
);

class _Http {
  Dio _dio;

  _Http() {
    _dio = Dio(options);
    this.setInterceptor();
  }

  void handleError(DioError error) {
    // DioErrorType errorType = error.type;
    // String message = error.message;
    print('ajax error...');
  }

  void setInterceptor() {
    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      return options;
    }, onResponse: (Response response) {
      return response;
    }, onError: (DioError e) {
      handleError(e);
      return e;
    }));
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
  }) =>
      _dio.get(
        url,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );

  Future<Response> post(String url,
          {dynamic data,
          Map<String, dynamic> queryParameters,
          Options options,
          CancelToken cancelToken}) =>
      _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

  Future<Response> put(String url,
          {dynamic data,
          Map<String, dynamic> queryParameters,
          Options options,
          CancelToken cancelToken}) =>
      _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

  Future<Response> delete(String url,
          {dynamic data,
          Map<String, dynamic> queryParameters,
          Options options,
          CancelToken cancelToken}) =>
      _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
}

final _Http http = _Http();
