import 'dart:async';
import 'package:dio/dio.dart';

Options options = Options(
  baseUrl: 'https://api.royaleapi.com',
  connectTimeout: 5000,
  receiveTimeout: 3000,
  responseType: ResponseType.JSON,
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
    _dio.interceptor.request.onSend = (Options options) async {
      return options;
    };

    _dio.interceptor.response.onSuccess = (Response response) {
      return response;
    };

    _dio.interceptor.response.onError = (DioError error) {
      handleError(error);
      return error;
    };
  }

  void cancelDioInterceptor() {
    _dio.interceptor.request.onSend = null;
    _dio.interceptor.response.onSuccess = null;
    _dio.interceptor.response.onError = null;
  }

  Future<Response> get(String url,
          {dynamic data, Options options, CancelToken cancelToken}) =>
      _dio.get(
        url,
        data: data,
        options: options,
        cancelToken: cancelToken,
      );

  Future<Response> post(String url,
          {dynamic data, Options options, CancelToken cancelToken}) =>
      _dio.post(
        url,
        data: data,
        options: options,
        cancelToken: cancelToken,
      );

  Future<Response> put(String url,
          {dynamic data, Options options, CancelToken cancelToken}) =>
      _dio.put(
        url,
        data: data,
        options: options,
        cancelToken: cancelToken,
      );

  Future<Response> delete(String url,
          {dynamic data, Options options, CancelToken cancelToken}) =>
      _dio.delete(
        url,
        data: data,
        options: options,
        cancelToken: cancelToken,
      );
}

final _Http http = _Http();
