import 'package:flutter/material.dart';
import 'package:k1/Models/ProductGroup.dart';
import 'package:k1/Models/Supplier.dart';
import 'package:k1/Theme/Theme.dart';
import 'package:k1/UI/ProductGroupDetailPage.dart';

class ProductGroupCard extends StatefulWidget {
  final ProductGroup group;
  final List<Supplier> supplier;

  ProductGroupCard({required this.group, required this.supplier});

  @override
  State<ProductGroupCard> createState() => _ProductGroupCardState();
}

class _ProductGroupCardState extends State<ProductGroupCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Закругление со всех сторон
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductGroupDetailPage(widget.group, widget.supplier),
            ),
          );
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0), // Закругление со всех сторон
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: FittedBox(
                  fit: BoxFit.cover, // Картинка заполняет весь блок, сохраняя соотношение сторон
                  child: Image.asset(
                    widget.group.image,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 8.0,
              //top: 1.0,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  widget.group.name,
                  style: TextStyle(
                    fontSize: ScreenSizeCache.fontSizeCard,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
