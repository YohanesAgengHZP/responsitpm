import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class BaseNetwork {
  static final String baseUrl = "https://api.genshin.dev";

  static Future<Map<String, dynamic>> get(String partUrl) async {

  }

  static Future<List<dynamic>> getList(String partUrl) async {

  }

  static Future<Map<String, dynamic>> _processResponse(
      http.Response response) async {

  }

  static Future<List<dynamic>> _processResponseList(
      http.Response response) async {

  }

  static void debugPrint(String value) {
    print("[BASE_NETWORK] - $value");
  }
}