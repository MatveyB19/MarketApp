import 'package:k1/Models/Product.dart';

class Supplier {
  final int id;
  final String name;
  final String iconAsset;
  final List<Product> products;

  Supplier({
    required this.id,
    required this.name,
    required this.iconAsset,
    required this.products
  });
}