import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hoardr/models/product_model.dart';

class NewlyAddedProducts extends StateNotifier<List<ProductModel>> {
  NewlyAddedProducts() : super([]);
  // we are going to get the list of items, and get the most recent items , the ones from the last 30 days and display them as our state
  List<ProductModel> getNewlyAdded(List<ProductModel> data) {
    final now = DateTime.now();
    final thirtyDaysAgo = now.subtract(Duration(days: 30));

    final result = data.where((product) {
      return product.dateAdded.isAfter(thirtyDaysAgo) && product.dateAdded.isBefore(now);
    }).toList();

    return result;
  }
}

final newlyAddedProductsProvider = StateNotifierProvider<NewlyAddedProducts, List<ProductModel>>((ref) {
  return NewlyAddedProducts();
});
