import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

class Service {
  final String title;
  final String image;
  final Function() onTap;

  const Service({required this.title, required this.image, required this.onTap});
}

class TodayOffer {
  final String brandName;
  final String brandLogoUrl;
  final String bannerImageUrl;
  final Function() onTap;
  final int? discount;
  final double? deliveryFee;

  const TodayOffer({required this.brandName, required this.brandLogoUrl, required this.bannerImageUrl, required this.onTap, this.discount, this.deliveryFee});
}

class TopOffer {
  final String bannerImageUrl;
  final Function() onTap;

  const TopOffer({required this.bannerImageUrl, required this.onTap});
}

const bannerImageUrl = 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg';
const brandLogoUrl = 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png';

class HomeController extends BaseController {
  final List<Service> services = [
    Service(title: 'Food', image: Assets.images.imgFood.path, onTap: () {}),
    Service(title: 'Grocery', image: Assets.images.imgGrocery.path, onTap: () {}),
    Service(title: 'Delivery', image: Assets.images.imgDelivery.path, onTap: () {}),
    Service(title: 'Laundry', image: Assets.images.imgLaundry.path, onTap: () {}),
    Service(title: 'Ticket', image: Assets.images.imgTicketPlane.path, onTap: () {}),
    Service(title: 'Cleaning', image: Assets.images.imgCleaning.path, onTap: () {}),
    Service(title: 'See More', image: Assets.images.imgSeeMore.path, onTap: () {}),
  ];

  // Unified banner data
  List<BannerItem> get todayOffersBannerItems => [
    BannerItem(
      title: 'Starbucks®',
      imageUrl: bannerImageUrl,
      logoUrl: brandLogoUrl,
      onTap: () {
        Get.toNamed(AppRoutes.store);
      },
    ),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}),
  ];

  List<BannerItem> get todayOffersBrandItems => [
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}),
  ];

  List<BannerItem> get todayOffersBrandDiscountItems => [
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}, discount: 10, deliveryFee: 10, isVerified: true),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}, discount: 45, deliveryFee: 32, isVerified: true),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}, discount: 15, deliveryFee: 12, isVerified: true),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}, discount: 15, deliveryFee: 53, isVerified: true),
    BannerItem(title: 'Starbucks®', imageUrl: bannerImageUrl, logoUrl: brandLogoUrl, onTap: () {}, discount: 32, deliveryFee: 33, isVerified: true),
  ];

  List<BannerItem> get topOffersItems => [
    BannerItem(title: '', imageUrl: 'https://i.pinimg.com/236x/87/60/fc/8760fc8c6e5caf3461b97f4d94543d6e.jpg', onTap: () {}),
    BannerItem(title: '', imageUrl: 'https://i.pinimg.com/236x/87/60/fc/8760fc8c6e5caf3461b97f4d94543d6e.jpg', onTap: () {}),
    BannerItem(title: '', imageUrl: 'https://i.pinimg.com/236x/87/60/fc/8760fc8c6e5caf3461b97f4d94543d6e.jpg', onTap: () {}),
  ];

  // Legacy data structures (kept for backward compatibility if needed)
  final List<TodayOffer> todayOffersBanner = [
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}),
  ];

  final List<TodayOffer> todayOffersBrand = [
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}),
  ];

  final List<TodayOffer> todayOffersBrandDiscount = [
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}, discount: 10, deliveryFee: 10),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}, discount: 45, deliveryFee: 32),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}, discount: 15, deliveryFee: 12),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}, discount: 15, deliveryFee: 53),
    TodayOffer(brandName: 'Starbucks®', brandLogoUrl: brandLogoUrl, bannerImageUrl: bannerImageUrl, onTap: () {}, discount: 32, deliveryFee: 33),
  ];

  final List<TopOffer> topOffers = [
    TopOffer(bannerImageUrl: 'https://i.pinimg.com/236x/87/60/fc/8760fc8c6e5caf3461b97f4d94543d6e.jpg', onTap: () {}),
    TopOffer(bannerImageUrl: 'https://i.pinimg.com/236x/87/60/fc/8760fc8c6e5caf3461b97f4d94543d6e.jpg', onTap: () {}),
    TopOffer(bannerImageUrl: 'https://i.pinimg.com/236x/87/60/fc/8760fc8c6e5caf3461b97f4d94543d6e.jpg', onTap: () {}),
  ];
}
