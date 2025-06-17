import 'package:sixam_mart_user/base/base_controller.dart';

class ProductItem {
  final String name;
  final String price;
  final String imageUrl;
  final String description;

  ProductItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.description = '',
  });
}

class StoreController extends BaseController {
  // Popular Items
  List<ProductItem> get popularItems => [
        ProductItem(
          name: 'Summer-Berry Strawberry Refresher',
          price: '\$5.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
        ),
        ProductItem(
          name: 'White Chocolate Mocha',
          price: '\$5.65 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=400',
        ),
        ProductItem(
          name: 'Caramel Macchiato',
          price: '\$5.65 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
        ),
      ];

  // Brewed Coffees
  List<ProductItem> get brewedCoffees => [
        ProductItem(
          name: 'Caffè Americano',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=400',
        ),
        ProductItem(
          name: 'Featured Blonde Roast',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1497935586351-b67a49e012bf?w=400',
        ),
        ProductItem(
          name: 'Featured Dark Roast',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=400',
        ),
      ];

  // Hot Coffees
  List<ProductItem> get hotCoffees => [
        ProductItem(
          name: 'Honey Almond Milk Flat White',
          price: '\$4.15 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1485808191679-5f86510681a2?w=400',
        ),
        ProductItem(
          name: 'Lavender Oatmilk Latte',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=400',
        ),
        ProductItem(
          name: 'Caramel Macchiato',
          price: '\$4.15 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
        ),
      ];

  // Cold Coffees
  List<ProductItem> get coldCoffees => [
        ProductItem(
          name: 'White Chocolate Mocha',
          price: '\$5.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=400',
        ),
        ProductItem(
          name: 'Vanilla Sweet Cream Cold Brew',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
        ),
        ProductItem(
          name: 'Iced Starbucks Blonde Vanilla Latte',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
        ),
      ];

  // Starbucks Refreshers Beverages
  List<ProductItem> get refresherBeverages => [
        ProductItem(
          name: 'Summer-Berry Strawberry Refresher',
          price: '\$5.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
        ),
        ProductItem(
          name: 'Mango Dragonfruit Lemonade Refresher',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1546173159-315724a31696?w=400',
        ),
        ProductItem(
          name: 'Spicy Strawberry Lemonade Refresher',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
        ),
      ];

  // Frappuccino Blended Beverages
  List<ProductItem> get frappuccinoBeverages => [
        ProductItem(
          name: 'Mocha Cookie Crumble Frappuccino',
          price: '\$5.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=400',
        ),
        ProductItem(
          name: 'Caramel Ribbon Crunch Frappuccino',
          price: '\$5.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
        ),
        ProductItem(
          name: 'Strawberry Açaí Lemonade Refresher',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
        ),
      ];

  // Iced Tea and Lemonade
  List<ProductItem> get icedTeaLemonade => [
        ProductItem(
          name: 'Iced Matcha Lemonade',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=400',
        ),
        ProductItem(
          name: 'Iced Passion Tango Tea',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
        ),
        ProductItem(
          name: 'Iced Lavender Oatmilk Latte',
          price: '\$4.15 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=400',
        ),
      ];

  // Hot Teas
  List<ProductItem> get hotTeas => [
        ProductItem(
          name: 'Chai Tea',
          price: '\$3.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1571934811356-5cc061b6821f?w=400',
        ),
        ProductItem(
          name: 'Teavana London Fog Tea Latte',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1571934811356-5cc061b6821f?w=400',
        ),
        ProductItem(
          name: 'Matcha Tea Latte',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=400',
        ),
      ];

  // Bottled Beverages
  List<ProductItem> get bottledBeverages => [
        ProductItem(
          name: 'Smartwater Lemon',
          price: '\$2.95',
          imageUrl: 'https://images.unsplash.com/photo-1523362628745-0c100150b504?w=400',
        ),
        ProductItem(
          name: 'Evolution Fresh Mighty Watermelon',
          price: '\$4.95',
          imageUrl: 'https://images.unsplash.com/photo-1546173159-315724a31696?w=400',
        ),
        ProductItem(
          name: 'Horizon Organic Milk',
          price: '\$2.95',
          imageUrl: 'https://images.unsplash.com/photo-1523362628745-0c100150b504?w=400',
        ),
      ];
}
