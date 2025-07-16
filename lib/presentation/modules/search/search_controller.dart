import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class SearchItem {
  final String title;
  final String? iconPath;

  SearchItem({required this.title, this.iconPath});
}

class CategoryItem {
  final String title;
  final String iconPath;

  CategoryItem({required this.title, required this.iconPath});
}

class SearchController extends BaseController {
  final FocusNode focusNode = FocusNode();
  final TextEditingController textController = TextEditingController();

  // Mock data for Top searches
  final List<SearchItem> topSearches = [SearchItem(title: 'Breakfast'), SearchItem(title: 'Coffee'), SearchItem(title: 'Fast Food'), SearchItem(title: 'Drink')];

  // Mock data for Recent searches
  final List<SearchItem> recentSearches = [SearchItem(title: 'Breakfast'), SearchItem(title: 'Coffee'), SearchItem(title: 'Fast Food'), SearchItem(title: 'Drink')];

  // Mock data for Top Categories
  final List<CategoryItem> topCategories = [
    CategoryItem(title: 'Breakfast', iconPath: 'assets/images/breakfast.png'),
    CategoryItem(title: 'Coffee', iconPath: 'assets/images/coffee.png'),
    CategoryItem(title: 'Fast Food', iconPath: 'assets/images/fast_food.png'),
    CategoryItem(title: 'Drink', iconPath: 'assets/images/drink.png'),
    CategoryItem(title: 'Pizza', iconPath: 'assets/images/pizza.png'),
    CategoryItem(title: 'Mexican', iconPath: 'assets/images/mexican.png'),
    CategoryItem(title: 'Desserts', iconPath: 'assets/images/desserts.png'),
    CategoryItem(title: 'Seafood', iconPath: 'assets/images/seafood.png'),
    CategoryItem(title: 'Salads', iconPath: 'assets/images/salads.png'),
  ];

  @override
  void onClose() {
    focusNode.dispose();
    textController.dispose();
    super.onClose();
  }
}
