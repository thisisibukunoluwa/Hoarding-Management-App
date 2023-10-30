
import 'package:riverpod/riverpod.dart';


class SearchQuery extends StateNotifier<String> {
  SearchQuery() : super('');

  void onChange(String query) {
    state = query;
  }
}

final searchQueryProvider = StateNotifierProvider<SearchQuery, String>((ref) {
  return SearchQuery();
});


