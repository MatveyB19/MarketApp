import 'package:flutter/material.dart';
import 'package:k1/Models/Supplier.dart';
import 'package:k1/Repositories/DataSources.dart';
import 'package:k1/Theme/Theme.dart';
import 'package:k1/UI/Card/ProductCard.dart';
import 'package:k1/UI/Card/ProductGroupListView.dart';
import 'package:k1/UI/Card/SupplierCardSecond.dart';

class SupplierDetailPage extends StatefulWidget {
  final Supplier supplier;

  SupplierDetailPage(this.supplier);

  @override
  State<SupplierDetailPage> createState() => _SupplierDetailPageState();
}

class _SupplierDetailPageState extends State<SupplierDetailPage> {
  @override
  Widget build(BuildContext context) {
    final productGroups = widget.supplier.products.map((product) => product.productGroupId).toSet();
    final groups = productGroups.map((groupId) => DataSources().getProductGroups().firstWhere((group) => group.id == groupId)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SupplierCardSecond(supplier: widget.supplier),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Группы товаров',
              style: TextStyle(fontSize: ScreenSizeCache.fontSizeSuppliers, fontWeight: FontWeight.bold),
            ),
          ),

          ProductGroupListView(
            groups: groups,
            supplier:[widget.supplier],
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Продукты',
              style: TextStyle(fontSize: ScreenSizeCache.fontSizeSuppliers, fontWeight: FontWeight.bold),
            ),
          ),
          ProductGrid(products: widget.supplier.products),

        ],
      ),
    );
  }
}