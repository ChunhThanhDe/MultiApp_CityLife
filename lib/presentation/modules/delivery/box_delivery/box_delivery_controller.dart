import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class BoxDeliveryController extends GetxController {
  var pickupLocation = ''.obs;
  var dropoffLocation = ''.obs;
  var selectedBox = 0.obs; // 0: Small, 1: Large
  var productImages = <XFile>[].obs;
  var instruction = ''.obs;

  // Returns true if both locations are selected
  bool get canShowDetailForm => pickupLocation.value.isNotEmpty && dropoffLocation.value.isNotEmpty;

  void setPickupLocation(String loc) {
    pickupLocation.value = loc;
    update();
  }

  void setDropoffLocation(String loc) {
    dropoffLocation.value = loc;
    update();
  }

  void selectBox(int index) {
    selectedBox.value = index;
    update();
  }

  void addImage(XFile file) {
    productImages.add(file);
    update();
  }

  void removeImage(int index) {
    productImages.removeAt(index);
    update();
  }

  void setInstruction(String val) {
    instruction.value = val;
    update();
  }
}
