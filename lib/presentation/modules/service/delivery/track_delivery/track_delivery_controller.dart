import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_package_information_card.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_tracking_progress.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_travel_history_section.dart';

class TrackDeliveryController extends BaseController {
  final RxList<TrackingStep> steps = <TrackingStep>[
    TrackingStep(label: 'Step 1', isFilled: true, isTick: true),
    TrackingStep(label: 'Step 2', isFilled: true, isTick: true),
    TrackingStep(label: 'Step 3', isFilled: true, isTick: false, isCurrent: true),
    TrackingStep(label: 'Step 4', isFilled: false),
  ].obs;

  final RxDouble progressPercent = 0.67.obs;

  final Rx<PackageInfo> packageInfo = PackageInfo(
    trackingId: '#D923-Y903',
    from: 'Mississauga, ON CA',
    deliveryStatus: 'On the way',
    custom: 'Abdulkadir Ali',
    to: 'WINNIPEG, MB CA',
    estimated: 'January 21, 2025',
  ).obs;

  final RxList<TravelHistory> travelHistory = <TravelHistory>[
    TravelHistory(title: 'Out for delivery', desc: 'WINNIPEG, MB CA', date: '01-28-2025', time: '9:25 AM', color: AppColors.stateBrandDefault500),
    TravelHistory(title: 'On the way', desc: 'WINNIPEG, MB CA', date: '01-27-2025', time: '9:25 AM', color: AppColors.textGreyHighest950),
    TravelHistory(title: 'On the way', desc: 'Mississauga, ON CA', date: '01-25-2025', time: '9:25 AM', color: AppColors.textGreyHighest950),
    TravelHistory(title: 'Arrive at Sorting Center', desc: 'Mississauga, ON CA', date: '01-24-2025', time: '9:25 AM', color: AppColors.textGreyHighest950),
    TravelHistory(title: 'Pick-up', desc: 'Mississauga, ON CA', date: '01-20-2025', time: '9:25 AM', color: AppColors.textGreyHighest950),
    TravelHistory(title: 'Label Created', desc: 'Mississauga, ON CA', date: '01-20-2025', time: '9:25 AM', color: AppColors.textGreyHighest950),
  ].obs;
}
