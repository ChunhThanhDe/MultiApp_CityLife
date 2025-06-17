import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class BoxDeliveryController extends GetxController {
  final RxList<Map<String, String>> savedAddresses = <Map<String, String>>[
    {'label': 'My Work', 'address': '2150 N Waterman Ave, El Centro, CA 92243'},
    {'label': 'My Home', 'address': '2216 N 10th St, Apt 0, El Centro, CA 92243'},
    {'label': 'Hospital', 'address': '385 Main St, El Centro, CA 92243'},
  ].obs;

  final RxList<Map<String, String>> boxData = [
    {'label': 'Small Box', 'desc': '20cm x 20cm\nUpto 10kg', 'img': 'assets/images/img_box_delivery.png'},
    {'label': 'Large Box', 'desc': '40cm x 40cm\nUpto 50kg', 'img': 'assets/images/img_box_delivery.png'},
  ].obs;

  var pickupLocation = ''.obs;
  var dropoffLocation = ''.obs;
  var selectedBox = 0.obs;
  var productImages = <XFile>[].obs;
  var instruction = ''.obs;

  bool get canShowDetailForm => pickupLocation.value.isNotEmpty && dropoffLocation.value.isNotEmpty;

  void setPickupLocation(String loc) => pickupLocation.value = loc;
  void setDropoffLocation(String loc) => dropoffLocation.value = loc;
  void selectBox(int index) => selectedBox.value = index; // <--- KHÔNG gọi update()
  void addImage(XFile file) => productImages.add(file);
  void removeImage(int index) => productImages.removeAt(index);
  void setInstruction(String val) => instruction.value = val;
}
