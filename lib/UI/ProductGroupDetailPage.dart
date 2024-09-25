import 'package:flutter/material.dart';
import 'package:k1/Models/ProductGroup.dart';
import 'package:k1/Models/Supplier.dart';
import 'package:k1/UI/Card/ProductCard.dart';
import 'package:k1/UI/Card/SupplierCardSecond.dart';

class ProductGroupDetailPage extends StatefulWidget {
  final ProductGroup productGroup;
  final List<Supplier> suppliers;

  ProductGroupDetailPage(this.productGroup, this.suppliers);

  @override
  State<ProductGroupDetailPage> createState() => _ProductGroupDetailPageState();
}

class _ProductGroupDetailPageState extends State<ProductGroupDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productGroup.name),
      ),
      body: ListView(
        children: [
          ...widget.suppliers.map((supplier) {
            final productsInGroup = supplier.products.where((product) => product.productGroupId == widget.productGroup.id).toList();
            if (productsInGroup.isNotEmpty) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SupplierCardSecond(supplier: supplier),
                  ProductGrid(products: productsInGroup),

                ],
              );
            } else {
              return Container();
            }
          }).toList(),
        ],
      ),
    );
  }
}