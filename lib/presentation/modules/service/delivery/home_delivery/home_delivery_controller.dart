import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';

class HomeDeliveryController extends BaseController {
  /// List of recent deliveries
  final deliveries = <Map<String, dynamic>>[
    {
      "code": "#D923-Y903",
      "date": "Jan 10, 2025",
      "status": "In Delivered",
      "stepStatus": [true, true, true, false],
    },
    {
      "code": "#F845-P712",
      "date": "Feb 15, 2025",
      "status": "In Progress",
      "stepStatus": [true, true, false, false],
    },
    {
      "code": "#A423-B501",
      "date": "Mar 20, 2025",
      "status": "In Review",
      "stepStatus": [true, false, false, false],
    },
    {
      "code": "#E917-Q223",
      "date": "Apr 25, 2025",
      "status": "Completed",
      "stepStatus": [true, true, true, true],
    },
    {
      "code": "#K301-R621",
      "date": "May 30, 2025",
      "status": "On Hold",
      "stepStatus": [false, false, false, false],
    },
    {
      "code": "#S422-DB11",
      "date": "Jun 5, 2025",
      "status": "Cancelled",
      "stepStatus": [false, false, false, false],
    },
  ].obs;

  /// Currently selected delivery
  final selectedDelivery = Rxn<Map<String, dynamic>>();

  void selectDelivery(Map<String, dynamic> delivery) {
    selectedDelivery.value = delivery;
  }

  /// Step progress for the main delivery status card
  /// [true, true, false, false] means 2 steps checked, 2 not
  final stepStatus = <bool>[true, true, false, false].obs;

  /// Method to update steps (for example, when delivery progresses)
  void setStep(int stepIndex) {
    for (int i = 0; i < stepStatus.length; i++) {
      stepStatus[i] = i <= stepIndex;
    }
    stepStatus.refresh(); // Make sure UI updates
  }

  /// Example: Add new delivery
  void addDelivery(Map<String, dynamic> delivery) {
    deliveries.insert(0, delivery);
  }

  /// Example: Remove a delivery
  void removeDelivery(int index) {
    if (index >= 0 && index < deliveries.length) {
      deliveries.removeAt(index);
    }
  }

  // You can add API fetch logic, loading, error status, etc. as needed!
}
