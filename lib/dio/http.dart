import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHttp {
  static const String _baseUrl = "env.baseUrl";

  static const Map<String, String> _headers = {
    'X-RapidAPI-Key': 'env.key',
    "'X-RapidAPI-Host'": "env.host",
  };

  static Future getRequest(String path) async {
    try {
      String url = _baseUrl + path;

      print(url);
      final response = await http.get(Uri.parse(url), headers: _headers);

      var responseData = json.decode(response.body);

      return responseData;
    } catch (e) {
      print(e);
      throw ('Error en el GET');
    }
  }
}
