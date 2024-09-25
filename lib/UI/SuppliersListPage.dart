import 'package:flutter/material.dart';
import 'package:k1/Models/ProductGroup.dart';
import 'package:k1/Models/Supplier.dart';
import 'package:k1/UI/Card/ProductGroupListView.dart';
import 'package:k1/UI/Card/SupplierCardSecond.dart';

class SuppliersListPage extends StatefulWidget {
  final List<Supplier> suppliers;
  final List<ProductGroup> productGroups;

  SuppliersListPage({required this.suppliers, required this.productGroups});

  @override
  State<SuppliersListPage> createState() => _SuppliersListPageState();
}

class _SuppliersListPageState extends State<SuppliersListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Поставщики и группы товаров'),
      ),
      body: ListView.builder(
        itemCount: widget.suppliers.length,
        itemBuilder: (context, supplierIndex) {
          final supplier = widget.suppliers[supplierIndex];
          final supplierProductGroups = supplier.products.map((product) => product.productGroupId).toSet();
          final groups = supplierProductGroups.map((groupId) => widget.productGroups.firstWhere((group) => group.id == groupId)).toList();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SupplierCardSecond(supplier: supplier),
              const SizedBox(height: 10.0),

              ProductGroupListView(
                groups: groups,
                supplier:[supplier],
              ),

            ],
          );
        },
      ),
    );
  }
}