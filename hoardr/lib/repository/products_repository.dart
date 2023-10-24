import 'package:hoardr/models/product_model.dart';
import 'package:riverpod/riverpod.dart';

class ProductRepository {
  Future<List<ProductModel>> getAllCards() async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return ProductModel.productList;
    });
  }

  Future<ProductModel> getCard(String id) async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return ProductModel.productList.where((el) => el.id == id).first;
    });
  }
}

final cardRepositoryProvider = FutureProvider<ProductRepository>((ref) {
  return ProductRepository();
});


