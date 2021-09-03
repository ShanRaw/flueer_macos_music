/*
Api单个对象类
 */

class Api {
  final String url;
  final String? method;
  bool? isLoading = false;
  bool? auth = false;
  Map? header = {};

  Api(
      {required this.url,
      this.method = 'get',
      this.isLoading = false,
      this.auth = false,
      this.header});

  factory Api.extra(
      {required String url,
      String? method,
      bool isLoading = true,
      bool auth = true,
      Map? header,
      required Map<String, dynamic> extra}) {
    if (extra.isEmpty) {
      return Api(
          url: url,
          isLoading: isLoading,
          method: method,
          auth: auth,
          header: header ?? {});
    }
    String newUrl = url;
    extra.forEach((String key, dynamic val) {
      newUrl = newUrl.replaceAll(':$key', val);
    });
    return Api(
        url: newUrl,
        isLoading: isLoading,
        method: method,
        auth: auth,
        header: header ?? {});
  }
}
