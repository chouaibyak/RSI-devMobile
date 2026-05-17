import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseURL = "http://localhost:3000";

  Future<dynamic> get(String endPoint) async {
    Uri url = Uri.parse("$baseURL$endPoint");
    final response = await http.get(url);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw Exception("API Error ${response.statusCode}");
    }
  }
}