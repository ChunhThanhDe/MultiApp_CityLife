import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class PickupLocationBottomSheet extends StatelessWidget {
  const PickupLocationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 36,
                height: 4,
                margin: EdgeInsets.only(bottom: 16.h),
                decoration: BoxDecoration(color: AppColors.stateBrandLowest50, borderRadius: BorderRadius.circular(2)),
              ),
              const Text('Pickup Location', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(height: 16),
              // Search Field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search for an address',
                  prefixIcon: const Icon(Icons.search, size: 20),
                  filled: true,
                  fillColor: AppColors.stateGreyLowestHover100,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 16),
              // Saved addresses
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Saved addresses', style: TextStyle(fontSize: 14, color: AppColors.textGreyDefault500)),
              ),
              ListTile(
                title: const Text('My Work'),
                subtitle: const Text('2150 N Waterman Ave, El Centro, CA 92243'),
                onTap: () {}, // handle select
              ),
              ListTile(
                title: const Text('My Home'),
                subtitle: const Text('2216 N 10th St, Apt 0, El Centro, CA 92243'),
                trailing: Icon(Icons.check, color: AppColors.stateBrandDefault500),
                onTap: () {}, // handle select
              ),
              ListTile(
                title: const Text('Hospital'),
                subtitle: const Text('385 Main St, El Centro, CA 92243'),
                onTap: () {}, // handle select
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ), // handle add new address
                child: const Text('Add new address'),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
