import 'package:flutter/material.dart';

class ScreenSizeCache {

  static double? _screenWidth;

  static double? _fontSizeCard;
  static double? _avatarRadiusCard;

  static double? _containerHeight;
  static double? _sizedBoxHeight1;
  static double? _sizedBoxHeight2;
  static double? _fontSizeSuppliers;
  static double? _supplierNameFontSize;
  static double? _productGroupNameFontSize;

  static double? _avatarSize;
  static double? _avatarRadiusSuppliers;

  static int? _crossAxisCount;
  static double? _childAspectRatioGroup;
  static double? _childAspectRatioProduct;

  static void update(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;

    _fontSizeCard = _screenWidth! > 600 ? 24.0 : 16.0;
    _avatarRadiusCard = _screenWidth! > 600 ? 32.0 : 24.0;

    _containerHeight = _screenWidth! > 600 ? 240.0 : 140.0;
    _sizedBoxHeight1 = _screenWidth! > 600 ? 10.0 : 8.0;
    _sizedBoxHeight2 = _screenWidth! > 600 ? 28.0 : 12.0;
    _fontSizeSuppliers = _screenWidth! > 600 ? 24.0 : 20.0;
    _supplierNameFontSize = _screenWidth! > 600 ? 24.0 : 16.0;
    _productGroupNameFontSize = _screenWidth! > 600 ? 16.0 : 14.0;

    _avatarSize = _screenWidth! > 600 ? 180.0 : 91.0;
    _avatarRadiusSuppliers = _avatarSize! / 2;

    _crossAxisCount = _screenWidth! > 600 ? 2 : 2;
    _childAspectRatioGroup = _screenWidth! > 600 ? 1.2 : 1.1;
    _childAspectRatioProduct = _screenWidth! > 600 ? 0.8 : 0.8;
  }

  static double get screenWidth => _screenWidth!;

  static double get fontSizeCard => _fontSizeCard!;
  static double get avatarRadiusCard => _avatarRadiusCard!;

  static double get containerHeight => _containerHeight!;
  static double get sizedBoxHeight1 => _sizedBoxHeight1!;
  static double get  sizedBoxHeight2 => _sizedBoxHeight2!;
  static double get fontSizeSuppliers => _fontSizeSuppliers!;
  static double get supplierNameFontSize => _supplierNameFontSize!;
  static double get productGroupNameFontSize => _productGroupNameFontSize!;

  static double get avatarSize => _avatarSize!;
  static double get avatarRadiusSuppliers => _avatarRadiusSuppliers!;

  static int get crossAxisCount => _crossAxisCount!;
  static double get childAspectRatioGroup=> _childAspectRatioGroup!;
  static double get childAspectRatioProduct=> _childAspectRatioProduct!;
}
