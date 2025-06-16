import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';

class WelcomeModel {
  final String title;
  final String description;
  final String image;

  WelcomeModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

class WelcomeController extends BaseController {
  final PageController pageController = PageController();
  int currentPageIndex = 0;

  final List<WelcomeModel> welcomeModels = [
    WelcomeModel(
      title: 'Welcome to SpeedEats',
      description: 'Welcome to your one-stop destination for delicious meals delivered right to your doorstep. Get ready to explore a world of culinary delights.',
      image: Assets.images.imgWelcome1.path,
    ),
    WelcomeModel(
      title: 'Create Your Account',
      description: "Let's get started! Create your account to enjoy easy ordering, personalized recommendations, and exclusive deals. Enter your email and create a password to begin.",
      image: Assets.images.imgWelcome2.path,
    ),
    WelcomeModel(
      title: 'Explore Restaurants',
      description: 'Discover a diverse selection of restaurants offering everything from your favorite comfort foods to exotic cuisines.',
      image: Assets.images.imgWelcome3.path,
    ),
    WelcomeModel(
      title: 'Customize Your Order',
      description: 'Hungry for something specific? Customize your order with special instructions, dietary preferences.',
      image: Assets.images.imgWelcome4.path,
    ),
    WelcomeModel(
      title: 'Checkout & Payment',
      description: 'Ready to place your order? Review your selections, choose your preferred payment method, and enter your delivery address.',
      image: Assets.images.imgWelcome5.path,
    ),
    WelcomeModel(
      title: 'Track Your Delivery',
      description: 'Sit back and relax! Track your order in real-time as it makes its way to your doorstep. Get updates on the estimated delivery time and the status of your delivery driver.',
      image: Assets.images.imgWelcome6.path,
    ),
    WelcomeModel(
      title: 'Rate & Review',
      description: 'Share your feedback! Rate your meal and delivery experience to help us improve our service. Your input is valuable to us.',
      image: Assets.images.imgWelcome7.path,
    ),
    WelcomeModel(
      title: 'Reorder Favorites',
      description: 'Love what you ordered? Easily reorder your favorite meals with just a few taps. Access your order history to quickly find and reorder past favorites.',
      image: Assets.images.imgWelcome8.path,
    ),
    WelcomeModel(
      title: 'Promotions & Discounts',
      description: "Don't miss out on great deals! Stay updated on the latest promotions, discounts, and special offers available exclusively to our app users.",
      image: Assets.images.imgWelcome9.path,
    ),
    WelcomeModel(
      title: 'Welcome to SpeedEats',
      description:
          "Congratulations! You're now ready to embark on a culinary adventure with Food Delivery App. Discover new flavors, indulge in your cravings, and enjoy the convenience of food delivered to your doorstep.",
      image: Assets.images.imgWelcome10.path,
    ),
  ];

  void nextPage() {
    if (currentPageIndex < welcomeModels.length - 1) {
      currentPageIndex++;
      update();
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.toNamed(AppRoutes.signIn);
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
