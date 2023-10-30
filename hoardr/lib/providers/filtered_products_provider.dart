

import 'package:hoardr/models/product_model.dart';
import 'package:hoardr/providers/search_query_provider.dart';
import 'package:hoardr/repository/products_repository.dart';
import 'package:riverpod/riverpod.dart';

Future<List<ProductModel>> filteredCards(
  ProductRepository productRepository,

  StateController<String> searchQuery
) async {

  final searchQueryValue = searchQuery.state



  final ProductRepository productRepository = ref.watch(cardRepositoryProvider);
  
  final searchQuery = ref.watch(searchQueryProvider);

  var allCards = await cardRepository.getAllCards();

  if (selectedCategory != null) {
    return allCards.where((card) {
      return card.categories.any((category) => category == selectedCategory);
    }).toList();
  }


  if (searchQuery.trim().isNotEmpty) {
    return allCards.where((card) {
      return card.name.toLowerCase().contains(searchQuery.toLowerCase()); 
    }).toList();
  }
  return allCards;
}


