import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

typedef Service = ({
  String title,
  String image,
  Function() onTap,
});

typedef TodayOffer = ({
  String brandName,
  String logoUrl,
  String imageUrl,
  Function() onTap,
});

class HomeController extends BaseController {
  final List<Service> services = [
    (title: 'Food', image: Assets.images.imgFood.path, onTap: () {}),
    (title: 'Grocery', image: Assets.images.imgGrocery.path, onTap: () {}),
    (title: 'Delivery', image: Assets.images.imgDelivery.path, onTap: () {}),
    (title: 'Laundry', image: Assets.images.imgLaundry.path, onTap: () {}),
    (title: 'Ticket', image: Assets.images.imgTicketPlane.path, onTap: () {}),
    (title: 'Cleaning', image: Assets.images.imgCleaning.path, onTap: () {}),
    (title: 'See More', image: Assets.images.imgSeeMore.path, onTap: () {}),
  ];

  final List<TodayOffer> todayOffers = [
    (
      brandName: 'Starbucks®',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
      imageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
      onTap: () {}
    ),
    (
      brandName: 'Starbucks®',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
      imageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
      onTap: () {}
    ),
    (
      brandName: 'Starbucks®',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
      imageUrl: 'https://i.ytimg.com/vi/qrO5--Iuy60/maxresdefault.jpg',
      onTap: () {}
    ),
  ];
}
