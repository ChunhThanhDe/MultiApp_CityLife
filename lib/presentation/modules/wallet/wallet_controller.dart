import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class Transaction {
  Transaction({required this.title, required this.date, required this.amount, this.imageUrl, this.driverImageUrl, this.subtotal, this.deliveryFee, this.taxes, this.discount, this.tip, this.fileSize});
  final String title;
  final String date;
  final String amount;
  final String? imageUrl;
  final String? driverImageUrl;
  final double? subtotal;
  final double? deliveryFee;
  final double? taxes;
  final double? discount;
  final double? tip;
  final String? fileSize;
}

class WalletController extends BaseController {
  final List<Transaction> transactions = <Transaction>[].obs;
  final showBalance = true.obs;
  final walletBalance = 0.0.obs;

  void toggleBalanceVisibility() {
    showBalance.value = !showBalance.value;
  }

  @override
  Future<void> refresh() async {
    try {
      isLoading.value = true;
      // TODO: Implement real API calls to fetch wallet balance and transactions
      // await _fetchWalletBalance();
      // await _fetchTransactions();

      // Simulate loading for demo purposes
      await Future.delayed(const Duration(seconds: 1));
    } catch (e) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
  }
}
