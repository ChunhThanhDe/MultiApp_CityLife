import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class Transaction {
  final String title;
  final String date;
  final String amount;

  Transaction({
    required this.title,
    required this.date,
    required this.amount,
  });
}

class WalletController extends BaseController {
  final List<Transaction> transactions = [
    Transaction(title: 'Starbucks®', date: 'Jan 18, 2025  7:30 AM', amount: '\$20.94'),
    Transaction(title: 'Laundry', date: 'Jan 18, 2025  7:30 AM', amount: '\$20.94'),
    Transaction(title: 'Walmart', date: 'Jan 18, 2025  7:30 AM', amount: '\$44.45'),
    Transaction(title: 'In-N-Out', date: 'Jan 18, 2025  7:30 AM', amount: '\$18'),
    Transaction(title: 'Box Delivery', date: 'Jan 18, 2025  7:30 AM', amount: '\$32.40'),
    Transaction(title: 'Add Funds', date: 'Jan 18, 2025  7:30 AM', amount: '\$200'),
    Transaction(title: 'Targer', date: 'Jan 18, 2025  7:30 AM', amount: '\$364.05'),
    Transaction(title: 'Welgreen', date: 'Jan 18, 2025  7:30 AM', amount: '\$128.95'),
    Transaction(title: 'McDonald\'s', date: 'Jan 18, 2025  7:30 AM', amount: '\$20.50'),
  ];
  final showBalance = true.obs;

  toggleBalanceVisibility() {
    showBalance.value = !showBalance.value;
  }
}
