/*
http请求类
 */

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../config/http_config.dart';
import 'package:music/models/api.dart';

class Http {
  static final Dio dio = Dio(BaseOptions(
    baseUrl: HttpConfig.baseUrl!,
    connectTimeout: HttpConfig.connectTimeout,
    receiveTimeout: HttpConfig.receiveTimeout,
    responseType: HttpConfig.responseType,
    queryParameters: HttpConfig.queryParameters,
    headers: HttpConfig.headers,
    followRedirects: false,
    validateStatus: (status) {
      return (status ?? 0) < 400;
    },
  ))
    ..interceptors.add(InterceptorsWrapper(onRequest: (
      RequestOptions options,
      RequestInterceptorHandler handler,
    ) {
      // 在请求被发送之前做一些事情
      return handler.next(options); //continue
    }, onResponse: (
      Response e,
      ResponseInterceptorHandler handler,
    ) {
      print(e.realUri);
      print(e.statusCode);
      return handler.resolve(e);
    }, onError: (
      DioError e,
      ErrorInterceptorHandler handler,
    ) {
      print('err');
      // 当请求失败时做一些预处理
      handler.resolve(Response(
          requestOptions: RequestOptions(path: '/error'),
          statusCode: 500,
          data: HttpConfig.errorResponse));
    }));

  static Future api({required Api api, Map? params, FormData? formData}) async {
    var headers = <String, dynamic>{'accessToken': ''};

    if (api.auth == true) {}
    Response response;
    debugPrint('请求参数');
    debugPrint(params.toString());
    debugPrint(headers.toString());
    debugPrint('请求参数');
    try {
      response = await dio.request(api.url,
          data: formData ?? params,
          queryParameters: (api.method!.toLowerCase() == 'get')
              ? Map<String, dynamic>.from(params ?? {})
              : null,
          options: (api.header != null &&
                  api.header!['Content-Type']
                          .toString()
                          .toLowerCase()
                          .indexOf('application/x-www-form-urlencoded') !=
                      -1)
              ? Options(
                  method: api.method ?? 'post',
                  headers: headers,
                  contentType: Headers.formUrlEncodedContentType)
              : Options(method: api.method ?? 'post', headers: headers));
    } catch (err) {
      debugPrint('网络请求错误1:$err');
      return HttpConfig.errorResponse;
    }
    // debugPrint('请求结果');
    // debugPrint(response.data.toString());
    // debugPrint('请求结果');
    return response.data;
  }
}
