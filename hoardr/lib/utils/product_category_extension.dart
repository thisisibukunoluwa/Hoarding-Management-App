import 'package:hoardr/models/product_model.dart';

extension CategoryExtension on ProductCategory {
  String capitalName() =>
      name[0].toUpperCase() + name.substring(1, name.length).toLowerCase();
}
