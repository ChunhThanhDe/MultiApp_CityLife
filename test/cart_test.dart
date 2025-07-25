import 'package:flutter_test/flutter_test.dart';
import 'package:sixam_mart_user/domain/models/response/cart/cart_models.dart';
import 'package:sixam_mart_user/domain/models/response/cart/get_cart_list_response.dart';

void main() {
  group('Cart Models Tests', () {
    test('AddToCartRequest should create valid JSON', () {
      final request = AddToCartRequest(
        itemId: 1,
        model: 'Item',
        price: 10.99,
        quantity: 2,
        variation: [
          CartVariation(
            name: 'Size',
            values: {'size': 'Large'},
          ),
        ],
        addOnIds: [1, 2],
        addOnQtys: [1, 1],
      );

      final json = request.toJson();
      
      expect(json['item_id'], 1);
      expect(json['model'], 'Item');
      expect(json['price'], 10.99);
      expect(json['quantity'], 2);
      expect(json['variation'], isNotNull);
      expect(json['add_on_ids'], [1, 2]);
      expect(json['add_on_qtys'], [1, 1]);
    });

    test('UpdateCartRequest should create valid JSON', () {
      final request = UpdateCartRequest(
        cartId: 1,
        quantity: 3,
      );

      final json = request.toJson();
      
      expect(json['cart_id'], 1);
      expect(json['quantity'], 3);
    });

    test('RemoveFromCartRequest should create valid JSON', () {
      final request = RemoveFromCartRequest(cartId: 1);

      final json = request.toJson();
      
      expect(json['cart_id'], 1);
    });

    test('GetCartListItem should handle null values', () {
      final item = GetCartListItem(
        cartId: 1,
        itemId: 1,
        itemName: 'Test Item',
        itemImage: null,
        itemPrice: 10.99,
        itemQuantity: 2,
      );

      expect(item.cartId, 1);
      expect(item.itemName, 'Test Item');
      expect(item.itemImage, isNull);
      expect(item.itemPrice, 10.99);
      expect(item.itemQuantity, 2);
    });
  });
}