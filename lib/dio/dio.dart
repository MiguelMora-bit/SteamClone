import 'package:dio/dio.dart';

class Api {
  static final Dio _dio = Dio();

  static void configureDio() {
    ///Base url
    _dio.options.baseUrl = 'env.base_url';
    _dio.options.headers['X-RapidAPI-Key'] = 'env.key';
    _dio.options.headers['X-RapidAPI-Host'] = 'env.host';
    _dio.options.headers['useQueryString'] = 'true';
  }

  static Future httpGet(String path, [Map<String, dynamic>? queryParam]) async {
    try {
      final resp = await _dio.get(path, queryParameters: queryParam);

      return resp.data;
    } catch (e) {
      print(e);
      throw ('Error en el GET');
    }
  }

  static Future post(String path, Map<String, dynamic> data) async {
    final formData = FormData.fromMap(data);

    try {
      final resp = await _dio.post(path, data: formData);
      return resp.data;
    } catch (e) {
      print(e);
      throw ('Error en el POST');
    }
  }

  static Future put(String path, Map<String, dynamic> data) async {
    final formData = FormData.fromMap(data);

    try {
      final resp = await _dio.put(path, data: formData);
      return resp.data;
    } catch (e) {
      print(e);
      throw ('Error en el PUT');
    }
  }

  static Future delete(String path, Map<String, dynamic> data) async {
    final formData = FormData.fromMap(data);

    try {
      final resp = await _dio.delete(path, data: formData);
      return resp.data;
    } catch (e) {
      print(e);
      throw ('Error en el delete');
    }
  }
}
