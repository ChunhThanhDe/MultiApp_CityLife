import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/response/search_response.dart';
import 'package:sixam_mart_user/domain/repositories/search_repository.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

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
  final SearchRepository _searchRepository = SearchRepository();

  // Observables
  final RxList<String> topSearches = <String>[].obs;
  final RxList<String> recentSearches = <String>[].obs;
  final RxList<RecentStore> recentStores = <RecentStore>[].obs;
  final RxList<SearchItem> searchResults = <SearchItem>[].obs;
  final RxBool hasSearchResults = false.obs;
  final RxString currentQuery = ''.obs;

  // Computed BannerItems for search results
  List<BannerItem> get searchBannerItems => searchResults.map((item) => BannerItem(title: item.title, imageUrl: item.iconPath ?? '', onTap: () => onTapSearchItem(item.title))).toList();

  // Computed BannerItems for recent stores
  List<BannerItem> get recentStoreBannerItems => recentStores
      .map((store) => BannerItem(title: store.name, imageUrl: store.logoUrl, subtitle: store.deliveryTime, deliveryFee: store.deliveryFee, onTap: () => onTapSearchItem(store.name)))
      .toList();

  // Mock data for Top Categories (keeping static for now)
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
  void onInit() {
    super.onInit();
    // Listen to text changes for search
    textController.addListener(_onSearchTextChanged);
    loadInitialData();
  }

  @override
  void onClose() {
    focusNode.dispose();
    textController.dispose();
    super.onClose();
  }

  void _onSearchTextChanged() {
    final query = textController.text.trim();
    currentQuery.value = query;

    if (query.isEmpty) {
      hasSearchResults.value = false;
      searchResults.clear();
    } else {
      _performSearch(query);
    }
  }

  Future<void> loadInitialData() async {
    isLoading.value = true;
    try {
      final result = await _searchRepository.getInitialSearchData();

      switch (result) {
        case Success(response: final response):
          final searchResponse = SearchResponse.fromJson(response.data);
          topSearches.value = searchResponse.topSearches ?? [];
          recentSearches.value = searchResponse.recentSearches ?? [];
          recentStores.value = searchResponse.recentStores ?? [];
        case Failure(error: final error):
          final errorMessage = NetworkExceptions.getErrorMessage(error);
          showSnackBar(errorMessage);
      }
    } catch (e) {
      showSnackBar('Error loading search data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> _performSearch(String query) async {
    if (query.isEmpty) return;

    isLoading.value = true;
    try {
      final result = await _searchRepository.searchStores(query: query);

      switch (result) {
        case Success(response: final response):
          final searchResponse = SearchResponse.fromJson(response.data);
          // Convert API search items to UI search items
          searchResults.value = searchResponse.items?.data.map((item) => SearchItem(title: item.name)).toList() ?? [];
          hasSearchResults.value = true;
        case Failure(error: final error):
          final errorMessage = NetworkExceptions.getErrorMessage(error);
          showSnackBar(errorMessage);
          hasSearchResults.value = false;
      }
    } catch (e) {
      showSnackBar('Error searching: $e');
      hasSearchResults.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  void onTapSearchItem(String query) {
    textController.text = query;
    currentQuery.value = query;
    _performSearch(query);
  }

  void clearSearch() {
    textController.clear();
    currentQuery.value = '';
    hasSearchResults.value = false;
    searchResults.clear();
  }

  void showSnackBar(String message) {
    Get.snackbar('Search', message, snackPosition: SnackPosition.BOTTOM);
  }
}
