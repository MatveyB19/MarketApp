import 'package:flutter/material.dart';
import 'package:k1/Models/Supplier.dart';
import 'package:k1/Theme/Theme.dart';
import 'package:k1/UI/SupplierDetailPage.dart';

class SupplierCardSecond extends StatefulWidget {
  final Supplier supplier;

  SupplierCardSecond({required this.supplier});

  @override
  State<SupplierCardSecond> createState() => _SupplierCardSecondState();
}

class _SupplierCardSecondState extends State<SupplierCardSecond> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.supplier.iconAsset),
            radius: ScreenSizeCache.avatarRadiusCard,
          ),
          title: Text(
            widget.supplier.name,
            style: TextStyle(fontSize: ScreenSizeCache.fontSizeCard),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SupplierDetailPage(widget.supplier),
              ),
            );
          },
        );
      },
    );
  }
}