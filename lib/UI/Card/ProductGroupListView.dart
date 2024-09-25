import 'package:flutter/material.dart';
import 'package:k1/Models/ProductGroup.dart';
import 'package:k1/Models/Supplier.dart';
import 'package:k1/UI/Card/ProductGroupCard.dart';

class ProductGroupListView extends StatelessWidget {
  final List<ProductGroup> groups;
  final List<Supplier> supplier;

  ProductGroupListView({required this.groups, required this.supplier});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: (groups.length / 2).ceil(),
          itemBuilder: (context, index) {
            final startIndex = index * 2;
            final endIndex = startIndex + 1 < groups.length ? startIndex + 1 : null;
            return Row(
              children: [
                if (startIndex < groups.length)
                  Expanded(
                    child: ProductGroupCard(
                      group: groups[startIndex],
                      supplier: supplier,
                    ),
                  ),
                if (endIndex != null)
                  Expanded(
                    child: ProductGroupCard(
                      group: groups[endIndex],
                      supplier: supplier,
                    ),
                  ),
                if (endIndex == null)
                  Expanded(
                    child: const SizedBox.shrink(),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}