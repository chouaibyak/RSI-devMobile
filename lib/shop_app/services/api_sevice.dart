import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://10.0.2.2:3000"; // Android emulator

  Future<List<dynamic>> getCategories() async {
    final response = await http.get(Uri.parse("$baseUrl/categories"));
    return jsonDecode(response.body);
  }

  Future<List<dynamic>> getProducts(int categoryId) async {
    final response = await http.get(
      Uri.parse("$baseUrl/categories/$categoryId/products"),
    );
    return jsonDecode(response.body);
  }
}