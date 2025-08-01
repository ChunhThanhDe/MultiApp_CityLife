import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';

class BannerSpacingUtils {
  static double getHeaderSpacing(BannerType bannerType) {
    switch (bannerType) {
      case BannerType.bannerFloatingLogo:
        return 8;
      case BannerType.brandLogoName:
      case BannerType.bannerDiscount:
        return 12;
      case BannerType.bannerSingleImage:
        return 16;
    }
  }
}