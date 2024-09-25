import 'package:flutter/material.dart';
import 'package:k1/Models/Product.dart';
import 'package:k1/Theme/Theme.dart';

class ProductGrid extends StatefulWidget {
  final List<Product> products;

  ProductGrid({required this.products});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ScreenSizeCache.crossAxisCount,
            childAspectRatio: ScreenSizeCache.childAspectRatioProduct,
          ),
          itemCount: widget.products.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final product = widget.products[index];
            return Card(
              elevation: 6.0,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
                      child: Image.asset(
                        product.image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: TextStyle(fontSize: ScreenSizeCache.fontSizeCard, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            product.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: ScreenSizeCache.fontSizeCard - 2),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Цена: \$${product.price.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: ScreenSizeCache.fontSizeCard - 1, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}