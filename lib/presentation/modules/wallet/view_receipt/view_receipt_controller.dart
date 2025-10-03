import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_controller.dart';

class ItemInfo {
  ItemInfo({required this.name, required this.price, required this.image});
  final String name;
  final double price;
  final String image;
}

class ViewReceiptController extends BaseController {
  ViewReceiptController({required this.transaction});
  final Transaction transaction;
  final items = <ItemInfo>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadReceiptItems();
  }

  /// Load receipt items from API
  Future<void> _loadReceiptItems() async {
    try {
      isLoading.value = true;
      // TODO: Implement API call to get receipt items based on transaction
      // items.value = await ReceiptService.getReceiptItems(transaction.id);
    } catch (e) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
  }
}
