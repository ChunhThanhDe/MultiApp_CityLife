import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/wallet_controller.dart';

import 'package:sixam_mart_user/presentation/modules/wallet/view_receipt/view_receipt_controller.dart';

class ViewReceiptBinding extends Bindings {
  @override
  void dependencies() {
    final transaction = Get.arguments;
    if (transaction != null && transaction is Transaction) {
      Get.lazyPut(() => ViewReceiptController(transaction: transaction));
    } else {
      throw Exception('Transaction is required');
    }
  }
}
