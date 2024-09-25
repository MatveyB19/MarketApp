import 'package:k1/Models/Account.dart';
import 'package:k1/Models/Product.dart';
import 'package:k1/Models/ProductGroup.dart';
import 'package:k1/Models/Supplier.dart';

class DataSources{

  final List<Account> accounts = [
    Account('u@mail.ru', '123'),
    Account('p@mail.ru', '321'),
  ];

  final List<Supplier> suppliers = [
    Supplier(
      id: 1,
      name: 'Абрау',
      iconAsset: 'assets/icons/Абрау.ico',
      products: [
        Product(id: 1, name: 'Вино Светлое', image: 'assets/images/Вино1.jpg', productGroupId: 2204, description: 'Высококачественное светлое вино', price: 5.99),
        Product(id: 2, name: 'Деревенское масло', image: 'assets/images/Масло1.jpg', productGroupId: 0405, description: 'Натуральное деревенское масло', price: 6.99),
        Product(id: 3, name: 'Вино Полусухое', image: 'assets/images/Вино1.jpg', productGroupId: 2204, description: 'Высококачественное полусухое вино', price: 7.99),
      ],
    ),
    Supplier(
      id: 2,
      name: 'Кроп',
      iconAsset: 'assets/icons/Кроп.ico',
      products: [
        Product(id: 1, name: 'Молоко', image: 'assets/images/Молоко1.jpg', productGroupId: 0401, description: 'Свежее молоко', price: 3.99),
        Product(id: 2, name: 'Сливки', image: 'assets/images/Молоко1.jpg', productGroupId: 0401, description: 'Жирные сливки', price: 4.99),
        Product(id: 3, name: 'Вино Полусухое', image: 'assets/images/Вино1.jpg', productGroupId: 2204, description: 'Высококачественное полусухое вино', price: 7.99),
      ],
    ),
    Supplier(
      id: 3,
      name: 'МПК',
      iconAsset: 'assets/icons/МПК.ico',
      products: [
        Product(id: 1, name: 'Сигареты Беломор', image: 'assets/images/Табак1.jpg', productGroupId: 2403, description: 'Сигареты премиум класса', price: 10.99),
        Product(id: 2, name: 'Сигареты простые', image: 'assets/images/Табак1.jpg', productGroupId: 2403, description: 'Обычные сигареты', price: 8.99),
        Product(id: 3, name: 'Вода', image: 'assets/images/Вода1.jpg', productGroupId: 2201, description: 'Простая вода', price: 1.99),
      ],
    ),
    Supplier(
      id: 4,
      name: 'ЭКО',
      iconAsset: 'assets/icons/Эко.ico',
      products: [
        Product(id: 1, name: 'Вино Светлое', image: 'assets/images/Вино1.jpg', productGroupId: 2204, description: 'Экологически чистое светлое вино', price: 6.99),
        Product(id: 2, name: 'Деревенское масло', image: 'assets/images/Масло1.jpg', productGroupId: 0405, description: 'Экологически чистое деревенское масло', price: 7.99),
        Product(id: 3, name: 'Вино Полусухое', image: 'assets/images/Вино1.jpg', productGroupId: 2204, description: 'Экологически чистое полусухое вино', price: 8.99),
      ],
    ),
  ];

  final List<ProductGroup> productGroups = [
    ProductGroup(id: 2204, name: 'Вино', image: 'assets/images/Вино.jpg'),
    ProductGroup(id: 2201, name: 'Вода', image: 'assets/images/Вода.jpg'),
    ProductGroup(id: 0405, name: 'Сливоч. масло', image: 'assets/images/Масло.jpg'),
    ProductGroup(id: 2202, name: 'Вода минеральная', image: 'assets/images/Минеральная вода.jpg'),
    ProductGroup(id: 0401, name: 'Молоко сливки', image: 'assets/images/Молоко.jpg'),
    ProductGroup(id: 0406, name: 'Сыры творог', image: 'assets/images/Сыр.jpg'),
    ProductGroup(id: 2403, name: 'Табак', image: 'assets/images/Табак.jpg'),
  ];

  List<ProductGroup> getProductGroups() {
    return productGroups;
  }

  List<Supplier> getSuppliers() {
    return suppliers;
  }
  List<Account> getAccounts() {
    return accounts;
  }
}


