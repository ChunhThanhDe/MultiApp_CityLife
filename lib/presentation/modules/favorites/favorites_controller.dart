import 'dart:developer';

import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/enums/wishlist_item_type.dart';
import 'package:sixam_mart_user/domain/models/request/add_wishlist_request.dart';
import 'package:sixam_mart_user/domain/models/request/remove_wishlist_request.dart';
import 'package:sixam_mart_user/domain/models/response/wishlist_response.dart';
import 'package:sixam_mart_user/domain/repositories/wishlist_repository.dart';

enum FavoritesTab { store, items }

class FavoritesController extends BaseController {
  final WishlistRepository _wishlistRepository = Get.find<WishlistRepository>();

  var currentTab = FavoritesTab.store.obs;
  var isLoadingWishlist = true.obs;
  var wishlistItems = <WishlistItem>[].obs;
  var storeList = <WishlistStore>[].obs;

  void changeTab(FavoritesTab tab) => currentTab.value = tab;

  var favoriteStoreTitles = <String>{}.obs;
  var favoriteItemTitles = <String>{}.obs;

  @override
  void onInit() {
    super.onInit();
    fetchWishlistData();
  }

  Future<void> fetchWishlistData() async {
    isLoadingWishlist.value = true;

    try {
      final result = await _wishlistRepository.getWishlist();

      switch (result) {
        case Success(:final response):
          final data = response.data;
          if (data != null) {
            final wishlistResponse = WishlistResponse.fromJson(data);
            if (wishlistResponse.item != null) {
              wishlistItems.value = wishlistResponse.item!;
            }
            if (wishlistResponse.store != null) {
              storeList.value = wishlistResponse.store!;
            }
          }
        case Failure(:final error):
          log('Error fetching wishlist: $error', name: 'FavoritesController');
          wishlistItems.clear();
          storeList.clear();
      }
    } catch (e) {
      log('Exception fetching wishlist: $e', name: 'FavoritesController');
      wishlistItems.clear();
      storeList.clear();
    } finally {
      isLoadingWishlist.value = false;
    }
  }

  Future<void> addToWishlist(WishlistItemType type, int id) async {
    try {
      final request = AddWishlistRequest(type: type, id: id);
      final result = await _wishlistRepository.addWishlist(request);

      switch (result) {
        case Success():
          log('Successfully added to wishlist: $type with id $id');
          // Refresh the wishlist data after adding
          await fetchWishlistData();
        case Failure():
          log('Failed to add to wishlist: ${result.error}');
      }
    } catch (e) {
      log('Error adding to wishlist: $e');
    }
  }

  Future<void> removeFromWishlist(WishlistItemType type, int id) async {
    try {
      final request = RemoveWishlistRequest(type: type, id: id);
      final result = await _wishlistRepository.removeWishlist(request);

      switch (result) {
        case Success():
          log('Successfully removed from wishlist: $type with id $id');
          // Refresh the wishlist data after removing
          await fetchWishlistData();
        case Failure():
          log('Failed to remove from wishlist: ${result.error}');
      }
    } catch (e) {
      log('Error removing from wishlist: $e');
    }
  }

  // --- STORE ---
  void toggleFavoriteStore(String title) {
    if (favoriteStoreTitles.contains(title)) {
      favoriteStoreTitles.remove(title);
    } else {
      favoriteStoreTitles.add(title);
    }
  }

  bool isStoreFavorited(String title) => favoriteStoreTitles.contains(title);

  // --- ITEM ---
  void toggleFavoriteItem(String title) {
    if (favoriteItemTitles.contains(title)) {
      favoriteItemTitles.remove(title);
    } else {
      favoriteItemTitles.add(title);
    }
  }

  bool isItemFavorited(String title) => favoriteItemTitles.contains(title);
}
