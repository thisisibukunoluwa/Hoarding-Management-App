import 'package:hoardr/models/product_model.dart';
import 'package:riverpod/riverpod.dart';

class ProductRepository {
  Future<List<ProductModel>> getAllProducts() async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return ProductModel.productList;
    });
  }

  Future<ProductModel> getProduct(String id) async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return ProductModel.productList.where((el) => el.id == id).first;
    });
  }
}

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository();
});


