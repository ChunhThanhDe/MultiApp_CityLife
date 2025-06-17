import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_controller.dart';

class ItemInfo {
  final String name;
  final double price;
  final String image;

  ItemInfo({required this.name, required this.price, required this.image});
}

class ViewReceiptController extends BaseController {
  final Transaction transaction;
  ViewReceiptController({required this.transaction});
  final items = [
    ItemInfo(
      name: 'Summer-Berry Starbucks Refreshers® Beverage',
      price: 6.59,
      image: 'https://globalassets.starbucks.com/digitalassets/products/bev/SBX20190617_CaramelMacchiato.jpg?impolicy=1by1_wide_topcrop_630',
    ),
    ItemInfo(
      name: 'White Chocolate Macadamia Cream Cold Brew',
      price: 6.59,
      image: 'https://globalassets.starbucks.com/digitalassets/products/bev/SBX20190617_CaramelMacchiato.jpg?impolicy=1by1_wide_topcrop_630',
    ),
    ItemInfo(name: 'Caramel Macchiato', price: 6.59, image: 'https://globalassets.starbucks.com/digitalassets/products/bev/SBX20190617_CaramelMacchiato.jpg?impolicy=1by1_wide_topcrop_630'),
    ItemInfo(
      name: 'Caramel Ribbon Crunch Frappuccino® Blended Beverage',
      price: 6.59,
      image: 'https://globalassets.starbucks.com/digitalassets/products/bev/SBX20190617_CaramelMacchiato.jpg?impolicy=1by1_wide_topcrop_630',
    ),
  ];
}
