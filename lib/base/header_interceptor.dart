import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  final Map<dynamic, dynamic> Function() getHeader;

  HeaderInterceptor({required this.getHeader});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final defaultHeaders = getHeader.call();
    options.headers = {...defaultHeaders, ...options.headers};
    super.onRequest(options, handler);
  }
}
