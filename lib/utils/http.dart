import 'package:dio/dio.dart';

class Http {
  static Http instance;
  static String token;
  static Dio _dio;
  Options _options;

  static Http getInstance() {
    print("getInstance");
    if (instance == null) {
      instance = new Http();
    }
  }

  Http() {
    // 初始化 Options
    _options = new Options(baseUrl: 'https://api.royaleapi.com', headers: {
      'auth':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjI5NSwiaWRlbiI6IjUzNzIyNjkzNDAyODA3NTAxMCIsIm1kIjp7InVzZXJuYW1lIjoibXk5MDc0Iiwia2V5VmVyc2lvbiI6MywiZGlzY3JpbWluYXRvciI6IjE3NTAifSwidHMiOjE1NDkzNzEwNTkyNzd9.ot4ofXr4jKIKgXqR0Mop0fHoJa5rpVMffjcoVvbLbB8'
    });

    _dio = new Dio(_options);

    //发送请求拦截处理，例如：添加token使用
    _dio.interceptor.request.onSend = (Options options) async {
      print(options.baseUrl);
      return options;
    };

    //请求成功拦截，简化代码中调用难度
    _dio.interceptor.response.onSuccess = (Response response) async {
      print(response.statusCode);
      return response;
    };
    //请求失败拦截
    _dio.interceptor.response.onError = (DioError e) {
      print(e);
      return e;
    };
  }
}
