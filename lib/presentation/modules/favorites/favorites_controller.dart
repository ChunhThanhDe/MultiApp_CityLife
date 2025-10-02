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
              // Populate favoriteItemTitles with actual data
              favoriteItemTitles.clear();
              for (final item in wishlistResponse.item!) {
                if (item.name != null) {
                  favoriteItemTitles.add(item.name!);
                }
              }
            }
            if (wishlistResponse.store != null) {
              storeList.value = wishlistResponse.store!;
              // Populate favoriteStoreTitles with actual data
              favoriteStoreTitles.clear();
              for (final store in wishlistResponse.store!) {
                if (store.name != null) {
                  favoriteStoreTitles.add(store.name!);
                }
              }
            }
          }
        case Failure(:final error):
          log('Error fetching wishlist: $error', name: 'FavoritesController');
          wishlistItems.clear();
          storeList.clear();
          favoriteItemTitles.clear();
          favoriteStoreTitles.clear();
      }
    } catch (e) {
      log('Exception fetching wishlist: $e', name: 'FavoritesController');
      wishlistItems.clear();
      storeList.clear();
      favoriteItemTitles.clear();
      favoriteStoreTitles.clear();
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

  void toggleFavoriteStore(String title) async {
    final store = storeList.firstWhereOrNull((s) => s.name == title);
    if (store == null) {
      return;
    }
    final isCurrentlyFavorited = favoriteStoreTitles.contains(title);

    if (isCurrentlyFavorited) {
      // Remove from favorites
      favoriteStoreTitles.remove(title);
      // Also remove from the main store list immediately for UI update
      try {
        storeList.removeWhere((s) => s.name == title);
      } catch (e) {
        log('Error removing from local store list: $e', name: 'FavoritesController');
      }
      // Call API to remove from wishlist
      try {
        await removeFromWishlist(WishlistItemType.store, store.id ?? 0);
      } catch (e) {
        log('Error in removeFromWishlist API call for store: $e', name: 'FavoritesController');
      }
    } else {
      // Add to favorites
      favoriteStoreTitles.add(title);
      try {
        await addToWishlist(WishlistItemType.store, store.id ?? 0);
      } catch (e) {
        log('Error in addToWishlist API call for store: $e', name: 'FavoritesController');
      }
    }
  }

  bool isStoreFavorited(String title) => favoriteStoreTitles.contains(title);

  // --- ITEM ---
  void toggleFavoriteItem(String title) async {
    final item = wishlistItems.firstWhereOrNull((i) => i.name == title);
    if (item == null) {
      return;
    }

    final isCurrentlyFavorited = favoriteItemTitles.contains(title);

    if (isCurrentlyFavorited) {
      // Remove from favorites
      favoriteItemTitles.remove(title);
      // Also remove from the main wishlist immediately for UI update
      try {
        // Create a new list without the removed item instead of modifying the existing list
        final updatedItems = wishlistItems.where((i) => i.name != title).toList();
        wishlistItems.value = updatedItems;
      } catch (e) {
        print('Error removing from local wishlist: $e');
      }
      // Call API to remove from wishlist
      try {
        await removeFromWishlist(WishlistItemType.item, item.id ?? 0);
      } catch (e) {
        print('Error in removeFromWishlist API call: $e');
      }
    } else {
      // Add to favorites
      favoriteItemTitles.add(title);
      await addToWishlist(WishlistItemType.item, item.id ?? 0);
    }
  }

  bool isItemFavorited(String title) => favoriteItemTitles.contains(title);
}
