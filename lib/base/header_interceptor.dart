import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  HeaderInterceptor({required this.getHeader});
  final Map<dynamic, dynamic> Function() getHeader;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Check if noAuth flag is set to skip authorization headers
    final noAuth = options.extra['noAuth'] == true;

    if (noAuth) {
      // For noAuth requests, only add custom headers without authorization
      final customHeaders = options.headers;
      options.headers = customHeaders;
    } else {
      // For regular requests, add default headers including authorization
      final defaultHeaders = getHeader.call();
      options.headers = {...defaultHeaders, ...options.headers};
    }

    super.onRequest(options, handler);
  }
}
