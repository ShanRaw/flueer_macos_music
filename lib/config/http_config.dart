import 'package:dio/dio.dart';

abstract class HttpConfig {
  static String? baseUrl = 'https://music.wbdear.com'; //app接口地址
  static int connectTimeout = 20000; //接口链接服务器的超时时间
  static int receiveTimeout = 20000; //接收数据的最长时限
  /// [responseType] 表示期望以那种格式(方式)接受响应数据。
  /// 目前 [ResponseType] 接受三种类型 `JSON`, `STREAM`, `PLAIN`.
  ///
  /// 默认值是 `JSON`, 当响应头中content-type为"application/json"时，dio 会自动将响应内容转化为json对象。
  /// 如果想以二进制方式接受响应数据，如下载一个二进制文件，那么可以使用 `STREAM`.
  ///
  /// 如果想以文本(字符串)格式接收响应数据，请使用 `PLAIN`
  static ResponseType responseType = ResponseType.json;

  //公共参数
  static Map<String, dynamic /*String|Iterable<String>*/ >? queryParameters;

  //公共头
  static Map<String, dynamic>? headers;

  static const Map errorResponse = {"code": 500, "msg": "网络异常"};
}
