import 'package:flutter/material.dart';
import 'package:k1/Models/ProductGroup.dart';
import 'package:k1/Models/Supplier.dart';
import 'package:k1/Repositories/DataSources.dart';
import 'package:k1/Theme/Theme.dart';
import 'package:k1/UI/Card/ProductGroupListView.dart';
import 'package:k1/UI/Card/SupplierCardFirst.dart';

import 'package:k1/UI/SuppliersListPage.dart';

class SuppliersPage extends StatefulWidget {
  @override
  _SuppliersPageState createState() => _SuppliersPageState();
}

class _SuppliersPageState extends State<SuppliersPage> {
  final List<Supplier> suppliers = DataSources().getSuppliers();
  final List<ProductGroup> productGroups = DataSources().getProductGroups();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ScreenSizeCache.update(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Магазины'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Поставщики',
                    style: TextStyle(fontSize: ScreenSizeCache.fontSizeSuppliers, fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SuppliersListPage(suppliers: suppliers, productGroups: productGroups),
                        ),
                      );
                    },
                    label: Text(
                        'Показать поставщиков',
                         style: TextStyle(fontSize: ScreenSizeCache.fontSizeSuppliers-2),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenSizeCache.containerHeight,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: suppliers.length,
                itemBuilder: (context, index) {
                  return SupplierCardFirst(supplier: suppliers[index]);
                },
              ),
            ),
            SizedBox(height: ScreenSizeCache.sizedBoxHeight2),
            ProductGroupListView(
              groups: productGroups,
              supplier: suppliers,
            ),
          ],
        ),
      ),
    );
  }
}
