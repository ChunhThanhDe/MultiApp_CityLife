import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/page_param/verification_page_param.dart';

class VerificationController extends BaseController {
  final VerificationPageParam param;

  VerificationController({required this.param});

  void updateVerificationCode(String value) {
    print(value);
  }
}
