import 'package:hoardr/models/product_model.dart';
import 'package:riverpod/riverpod.dart';


class FavoriteProducts extends StateNotifier<List<ProductModel>> {
  FavoriteProducts() : super([]);

  void addToFavorites(int index, List<ProductModel> data) {
    data[index].isFavorite = true;
    final result = data.where((element) => element.isFavorite == true).toList();
    state = [...result];
  }

  void removeFromFavorites(String id) {
    for (final product in state) {
      if (product.id == id) {
        product.isFavorite = false;
      }
    }
  }
}

final favoritesProductsProvider = StateNotifierProvider<FavoriteProducts, List<ProductModel>>((ref) {
  return FavoriteProducts();
});
