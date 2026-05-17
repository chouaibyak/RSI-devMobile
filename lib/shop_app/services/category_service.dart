import '../core/api_client.dart';
import '../models/category.dart';
import '../models/product.dart';

class CategoryService {
  final ApiClient apiClient;
  const CategoryService(this.apiClient);

  Future<List<Category>> fetchCategories() async {
    final data = await apiClient.get("/categories");
    return (data as List).map((e) => Category.fromJson(e)).toList();
  }

  Future<List<Product>> getProduitsByCategory(int id) async {
    final data = await apiClient.get("/categorie/$id");
    return (data as List).map((e) => Product.fromJson(e)).toList();
  }
}