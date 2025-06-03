import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

const serviceBannerImageUrl = 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg';
const serviceBrandLogoUrl = 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png';

class ServiceController extends BaseController {
  // Service-specific banner data
  List<BannerItem> get serviceBannerItems => [
        BannerItem(
          title: 'UberEats',
          imageUrl: serviceBannerImageUrl,
          logoUrl: serviceBrandLogoUrl,
          onTap: () {},
        ),
        BannerItem(
          title: 'DoorDash',
          imageUrl: serviceBannerImageUrl,
          logoUrl: 'https://logos-world.net/wp-content/uploads/2020/11/DoorDash-Logo.png',
          onTap: () {},
        ),
        BannerItem(
          title: 'Grubhub',
          imageUrl: serviceBannerImageUrl,
          logoUrl: 'https://logos-world.net/wp-content/uploads/2020/11/DoorDash-Logo.png',
          onTap: () {},
        ),
      ];

  List<BannerItem> get serviceOffersItems => [
        BannerItem(
          title: 'FastFood Express',
          imageUrl: serviceBannerImageUrl,
          logoUrl: serviceBrandLogoUrl,
          onTap: () {},
          discount: 25,
          deliveryFee: 5.99,
          isVerified: true,
        ),
        BannerItem(
          title: 'Pizza Palace',
          imageUrl: serviceBannerImageUrl,
          logoUrl: serviceBrandLogoUrl,
          onTap: () {},
          discount: 15,
          deliveryFee: 3.50,
          isVerified: true,
        ),
        BannerItem(
          title: 'Healthy Bites',
          imageUrl: serviceBannerImageUrl,
          logoUrl: serviceBrandLogoUrl,
          onTap: () {},
          discount: 30,
          deliveryFee: 2.99,
          isVerified: false,
        ),
      ];

  List<BannerItem> get topServiceOffersItems => [
        BannerItem(
          title: '',
          imageUrl: serviceBannerImageUrl,
          onTap: () {},
        ),
        BannerItem(
          title: '',
          imageUrl: serviceBannerImageUrl,
          onTap: () {},
        ),
        BannerItem(
          title: '',
          imageUrl: serviceBannerImageUrl,
          onTap: () {},
        ),
      ];
}
