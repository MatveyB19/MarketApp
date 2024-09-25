import 'package:flutter/material.dart';
import 'package:k1/Models/Supplier.dart';
import 'package:k1/Theme/Theme.dart';
import 'package:k1/UI/SupplierDetailPage.dart';

class SupplierCardFirst extends StatelessWidget {
  final Supplier supplier;

  SupplierCardFirst({required this.supplier});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SupplierDetailPage(supplier),
          ),
        );
      },
      child: Column(
        children: [
          Card(
            elevation: 6.0,
            shape: const CircleBorder(),
            child: Container(
              width: ScreenSizeCache.avatarSize,
              height: ScreenSizeCache.avatarSize,
              child: CircleAvatar(
                backgroundImage: AssetImage(supplier.iconAsset),
                radius: ScreenSizeCache.avatarRadiusSuppliers,
              ),
            ),
          ),
          SizedBox(height: ScreenSizeCache.sizedBoxHeight1),
          Text(
            supplier.name,
            style: TextStyle(fontSize: ScreenSizeCache.supplierNameFontSize),
          ),
        ],
      ),
    );
  }
}