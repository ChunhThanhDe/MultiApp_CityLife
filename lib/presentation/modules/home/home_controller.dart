import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

class Service {
  final String title;
  final String image;
  final Function() onTap;

  const Service({
    required this.title,
    required this.image,
    required this.onTap,
  });
}

class TodayOffer {
  final String brandName;
  final String brandLogoUrl;
  final String bannerImageUrl;
  final Function() onTap;
  final String? discount;
  final double? deliveryFee;

  const TodayOffer({
    required this.brandName,
    required this.brandLogoUrl,
    required this.bannerImageUrl,
    required this.onTap,
    this.discount,
    this.deliveryFee,
  });
}

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

  final List<TodayOffer> todayOffersBanner = [
    TodayOffer(
        brandName: 'Starbucks®',
        brandLogoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
        bannerImageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
        onTap: () {}),
    TodayOffer(
        brandName: 'Starbucks®',
        brandLogoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
        bannerImageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
        onTap: () {}),
    TodayOffer(
        brandName: 'Starbucks®',
        brandLogoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
        bannerImageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
        onTap: () {}),
  ];

  final List<TodayOffer> todayOffersBrand = [
    TodayOffer(
        brandName: 'Starbucks®',
        brandLogoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
        bannerImageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
        onTap: () {}),
    TodayOffer(
        brandName: 'Starbucks®',
        brandLogoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
        bannerImageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
        onTap: () {}),
  ];

  final List<TodayOffer> todayOffersBrandDiscount = [
    TodayOffer(
        brandName: 'Starbucks®',
        brandLogoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
        bannerImageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
        onTap: () {},
        discount: '10%',
        deliveryFee: 10),
    TodayOffer(
        brandName: 'Starbucks®',
        brandLogoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
        bannerImageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
        onTap: () {},
        discount: '10%',
        deliveryFee: 10),
  ];
}
