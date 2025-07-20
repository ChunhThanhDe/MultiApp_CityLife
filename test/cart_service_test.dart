import 'package:flutter_test/flutter_test.dart';
import 'package:sixam_mart_user/domain/models/request/cart_models.dart';

void main() {
  group('Cart Models Tests', () {
    test('CartResponse should parse correctly from JSON', () {
      final json = {
        "stores": [
          {
            "store_id": 1,
            "store_name": "Demo Store",
            "store_logo": "https://example.com/logo.png",
            "items": [
              {
                "cart_id": 11,
                "item_id": 10055,
                "item_name": "Product A",
                "item_image": "https://example.com/product.jpg",
                "item_price": 150.0,
                "item_quantity": 3,
                "item_total_price": 450.0,
                "item_variation": [
                  {
                    "name": "size",
                    "values": {"label": "xxl"},
                  },
                ],
              },
            ],
            "store_total_items": 18,
            "store_total_price": 2700.0,
          },
        ],
        "summary": {"total_stores": 1, "total_items": 18, "total_price": 2700.0},
      };

      final cartResponse = CartResponse.fromJson(json);

      expect(cartResponse.stores.length, 1);
      expect(cartResponse.stores.first.storeId, 1);
      expect(cartResponse.stores.first.storeName, "Demo Store");
      expect(cartResponse.stores.first.items.length, 1);
      expect(cartResponse.stores.first.items.first.itemName, "Product A");
      expect(cartResponse.summary.totalItems, 18);
      expect(cartResponse.summary.totalPrice, 2700.0);
    });

    test('CartItem should parse correctly from JSON', () {
      final json = {
        "cart_id": 11,
        "item_id": 10055,
        "item_name": "Product A",
        "item_image": "https://example.com/product.jpg",
        "item_price": 150.0,
        "item_quantity": 3,
        "item_total_price": 450.0,
        "item_variation": [
          {
            "name": "size",
            "values": {"label": "xxl"},
          },
        ],
      };

      final cartItem = CartItem.fromJson(json);

      expect(cartItem.cartId, 11);
      expect(cartItem.itemId, 10055);
      expect(cartItem.itemName, "Product A");
      expect(cartItem.itemPrice, 150.0);
      expect(cartItem.itemQuantity, 3);
      expect(cartItem.itemTotalPrice, 450.0);
      expect(cartItem.itemVariation.length, 1);
      expect(cartItem.itemVariation.first.name, "size");
      expect(cartItem.itemVariation.first.values.label, "xxl");
    });

    test('StoreInCart should parse correctly from JSON', () {
      final json = {"store_id": 1, "store_name": "Demo Store", "store_logo": "https://example.com/logo.png", "items": [], "store_total_items": 0, "store_total_price": 0.0};

      final storeInCart = StoreInCart.fromJson(json);

      expect(storeInCart.storeId, 1);
      expect(storeInCart.storeName, "Demo Store");
      expect(storeInCart.storeLogo, "https://example.com/logo.png");
      expect(storeInCart.items.length, 0);
      expect(storeInCart.storeTotalItems, 0);
      expect(storeInCart.storeTotalPrice, 0.0);
    });
  });
}
