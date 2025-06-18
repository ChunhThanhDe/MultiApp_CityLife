import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/components/favorite_item_card.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/components/favorite_product_card.dart';

enum FavoritesTab { store, items }

class FavoritesController extends BaseController {
  var currentTab = FavoritesTab.store.obs;
  var favoritedStores = <FavoriteProduct>[
    FavoriteProduct(title: "Walmart", logo: "assets/images/img_logo_walmart.png", image: "assets/images/img_walmart.jpg"),
    FavoriteProduct(title: "Starbucks", logo: "assets/images/img_logo_starbucks.png", image: "assets/images/img_starbucks.png"),
    FavoriteProduct(title: "Domino's", logo: "assets/images/img_logo_domino.png", image: "assets/images/img_domino.png"),
    FavoriteProduct(title: "Target", logo: "assets/images/img_logo_target.png", image: "assets/images/img_target.jpg"),
    FavoriteProduct(title: "Walgreen", logo: "assets/images/img_logo_walgreen.png", image: "assets/images/img_walgreen.jpg"),
    FavoriteProduct(title: "McDonald's", logo: "assets/images/img_logo_mc.png", image: "assets/images/img_mc.jpg"),
    FavoriteProduct(title: "KFC", logo: "assets/images/img_logo_kfc.png", image: "assets/images/img_kfc.jpg"),
    FavoriteProduct(title: "Arby's", logo: "assets/images/img_logo_arby.png", image: "assets/images/img_arby.png"),
  ].obs;

  var favoritedItems = <FavoriteItem>[
    FavoriteItem(title: "White Chocolate Macchiato", image: "assets/images/img_item1.png", price: "\$6.59", calories: "160 Calories"),
    FavoriteItem(title: "Caramel Macchiato", image: "assets/images/img_item2.png", price: "\$6.59", calories: "160 Calories"),
    FavoriteItem(title: "Caramel Ribbon Crunch", image: "assets/images/img_item3.png", price: "\$6.59", calories: "160 Calories"),
    FavoriteItem(title: "Strawberry Crème Frappuccino", image: "assets/images/img_item4.png", price: "\$6.59", calories: "160 Calories"),
    FavoriteItem(title: "Iced Matcha Lemonade", image: "assets/images/img_item5.png", price: "\$6.59", calories: "160 Calories"),
    FavoriteItem(title: "White Chocolate Macchiato", image: "assets/images/img_item6.png", price: "\$6.59", calories: "160 Calories"),
    FavoriteItem(title: "Summer-Berry Starbucks", image: "assets/images/img_item7.png", price: "\$6.59", calories: "160 Calories"),
    FavoriteItem(title: "Mango Dragonfruit Lemonade", image: "assets/images/img_item8.png", price: "\$6.59", calories: "160 Calories"),
  ].obs;

  void changeTab(FavoritesTab tab) => currentTab.value = tab;

  var favoriteStoreTitles = <String>{}.obs;
  var favoriteItemTitles = <String>{}.obs;

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
