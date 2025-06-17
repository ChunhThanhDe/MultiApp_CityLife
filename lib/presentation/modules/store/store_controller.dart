import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

enum FilterType {
  all(label: 'Filter', icon: Icons.tune),
  drinks(label: 'Drinks', icon: Icons.local_drink),
  foods(label: 'Foods', icon: Icons.restaurant),
  atHome(label: 'At Home', icon: Icons.whatshot);

  const FilterType({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

class ProductItem {
  final String name;
  final String price;
  final String imageUrl;
  final String description;
  final List<FilterType> categories;

  ProductItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.description = '',
    this.categories = const [FilterType.drinks],
  });
}

class StoreController extends BaseController with GetSingleTickerProviderStateMixin {
  late TabController serviceTabController;

  // Filter state
  FilterType _selectedFilter = FilterType.all;
  FilterType get selectedFilter => _selectedFilter;

  @override
  void onInit() {
    super.onInit();
    serviceTabController = TabController(length: 3, vsync: this);
  }

  @override
  void onClose() {
    serviceTabController.dispose();
    super.onClose();
  }

  // Filter methods
  void selectFilter(FilterType filter) {
    _selectedFilter = filter;
    update();
  }

  bool isFilterSelected(FilterType filter) {
    return _selectedFilter == filter;
  }

  // Filter items based on selected filter
  List<ProductItem> filterItems(List<ProductItem> items) {
    if (_selectedFilter == FilterType.all) {
      return items;
    }
    return items.where((item) => item.categories.contains(_selectedFilter)).toList();
  }

  // Get all available categories with their filtered items
  Map<String, List<ProductItem>> get filteredCategories {
    Map<String, List<ProductItem>> categories = {};

    // Add Popular Items only for 'all' filter
    if (_selectedFilter == FilterType.all) {
      List<ProductItem> filteredPopular = filterItems(popularItems);
      if (filteredPopular.isNotEmpty) {
        categories['Popular Items'] = filteredPopular;
      }
    }

    // Add other categories with filtered items
    List<ProductItem> filteredBrewed = filterItems(brewedCoffees);
    if (filteredBrewed.isNotEmpty) {
      categories['Brewed Coffees'] = filteredBrewed;
    }

    List<ProductItem> filteredHot = filterItems(hotCoffees);
    if (filteredHot.isNotEmpty) {
      categories['Hot Coffees'] = filteredHot;
    }

    List<ProductItem> filteredCold = filterItems(coldCoffees);
    if (filteredCold.isNotEmpty) {
      categories['Cold Coffees'] = filteredCold;
    }

    List<ProductItem> filteredRefresher = filterItems(refresherBeverages);
    if (filteredRefresher.isNotEmpty) {
      categories['Starbucks Refreshers® Beverages'] = filteredRefresher;
    }

    List<ProductItem> filteredFrappuccino = filterItems(frappuccinoBeverages);
    if (filteredFrappuccino.isNotEmpty) {
      categories['Frappuccino® Blended Beverages'] = filteredFrappuccino;
    }

    List<ProductItem> filteredIcedTea = filterItems(icedTeaLemonade);
    if (filteredIcedTea.isNotEmpty) {
      categories['Iced Tea and Lemonade'] = filteredIcedTea;
    }

    List<ProductItem> filteredHotTea = filterItems(hotTeas);
    if (filteredHotTea.isNotEmpty) {
      categories['Hot Teas'] = filteredHotTea;
    }

    List<ProductItem> filteredBottled = filterItems(bottledBeverages);
    if (filteredBottled.isNotEmpty) {
      categories['Bottled Beverages'] = filteredBottled;
    }

    return categories;
  }

  // Popular Items
  List<ProductItem> get popularItems => [
        ProductItem(
          name: 'Summer-Berry Strawberry Refresher',
          price: '\$5.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'White Chocolate Mocha',
          price: '\$5.65 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=400',
          categories: [FilterType.drinks, FilterType.atHome], // Can be enjoyed both ways
        ),
        ProductItem(
          name: 'Caramel Macchiato',
          price: '\$5.65 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
          categories: [FilterType.drinks],
        ),
      ];

  // Brewed Coffees
  List<ProductItem> get brewedCoffees => [
        ProductItem(
          name: 'Caffè Americano',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Featured Blonde Roast',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1497935586351-b67a49e012bf?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Featured Dark Roast',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=400',
          categories: [FilterType.drinks],
        ),
      ];

  // Hot Coffees
  List<ProductItem> get hotCoffees => [
        ProductItem(
          name: 'Honey Almond Milk Flat White',
          price: '\$4.15 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1485808191679-5f86510681a2?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Lavender Oatmilk Latte',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=400',
          categories: [FilterType.drinks, FilterType.atHome], // Available as take-home blend
        ),
        ProductItem(
          name: 'Caramel Macchiato',
          price: '\$4.15 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
          categories: [FilterType.drinks],
        ),
      ];

  // Cold Coffees
  List<ProductItem> get coldCoffees => [
        ProductItem(
          name: 'White Chocolate Mocha',
          price: '\$5.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Vanilla Sweet Cream Cold Brew',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
          categories: [FilterType.drinks, FilterType.atHome],
        ),
        ProductItem(
          name: 'Iced Starbucks Blonde Vanilla Latte',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
          categories: [FilterType.drinks],
        ),
      ];

  // Starbucks Refreshers Beverages
  List<ProductItem> get refresherBeverages => [
        ProductItem(
          name: 'Summer-Berry Strawberry Refresher',
          price: '\$5.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Mango Dragonfruit Lemonade Refresher',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1546173159-315724a31696?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Spicy Strawberry Lemonade Refresher',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
          categories: [FilterType.drinks],
        ),
      ];

  // Frappuccino Blended Beverages
  List<ProductItem> get frappuccinoBeverages => [
        ProductItem(
          name: 'Mocha Cookie Crumble Frappuccino',
          price: '\$5.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Caramel Ribbon Crunch Frappuccino',
          price: '\$5.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Strawberry Açaí Lemonade Refresher',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
          categories: [FilterType.drinks],
        ),
      ];

  // Iced Tea and Lemonade
  List<ProductItem> get icedTeaLemonade => [
        ProductItem(
          name: 'Iced Matcha Lemonade',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Iced Passion Tango Tea',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Iced Lavender Oatmilk Latte',
          price: '\$4.15 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=400',
          categories: [FilterType.drinks],
        ),
      ];

  // Hot Teas
  List<ProductItem> get hotTeas => [
        ProductItem(
          name: 'Chai Tea',
          price: '\$3.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1571934811356-5cc061b6821f?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Teavana London Fog Tea Latte',
          price: '\$4.35 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1571934811356-5cc061b6821f?w=400',
          categories: [FilterType.drinks],
        ),
        ProductItem(
          name: 'Matcha Tea Latte',
          price: '\$4.95 • 160 Calories',
          imageUrl: 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=400',
          categories: [FilterType.drinks],
        ),
      ];

  // Bottled Beverages
  List<ProductItem> get bottledBeverages => [
        ProductItem(
          name: 'Smartwater Lemon',
          price: '\$2.95',
          imageUrl: 'https://images.unsplash.com/photo-1523362628745-0c100150b504?w=400',
          categories: [FilterType.drinks, FilterType.atHome], // Perfect for home
        ),
        ProductItem(
          name: 'Evolution Fresh Mighty Watermelon',
          price: '\$4.95',
          imageUrl: 'https://images.unsplash.com/photo-1546173159-315724a31696?w=400',
          categories: [FilterType.drinks, FilterType.atHome], // Take home beverage
        ),
        ProductItem(
          name: 'Horizon Organic Milk',
          price: '\$2.95',
          imageUrl: 'https://images.unsplash.com/photo-1523362628745-0c100150b504?w=400',
          categories: [FilterType.drinks, FilterType.atHome], // Great for home use
        ),
      ];
}
