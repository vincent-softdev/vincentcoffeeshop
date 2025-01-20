import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  Future<void> fetchProducts() async {
    _isLoading = true;
    notifyListeners();
    print('start fetching');
    if (kDebugMode) {
      print('start fetching');
    }

    try {
      final response = await http
          .get(Uri.parse('https://fakestoreapi.com/products?limit=10'));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        if (kDebugMode) {
          print('data: $data');
        }
        _products = data.map((item) => Product.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching products: $error');
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
