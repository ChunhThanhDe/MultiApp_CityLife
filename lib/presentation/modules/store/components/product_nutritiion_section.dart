import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';

class ProductNutritionSection extends StatelessWidget {
  const ProductNutritionSection({required this.details, required this.ingredients, required this.nutritions, super.key});
  final String details;
  final String ingredients;
  final List<Nutrition>? nutritions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Details
          Text(
            'Details',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.textGreyHighest950),
          ),
          const SizedBox(height: 8),
          Text(details, style: TextStyle(fontSize: 14, color: AppColors.textGreyHighest950, height: 1.6)),
          const SizedBox(height: 16),
          // Ingredients
          Text(
            'Ingredients',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.textGreyHighest950),
          ),
          const SizedBox(height: 8),
          Text(ingredients, style: TextStyle(fontSize: 14, color: AppColors.textGreyHighest950, height: 1.6)),
          if (nutritions != null && nutritions!.isNotEmpty) ...[
            const SizedBox(height: 20),
            // Nutrition Facts box
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backgroundSurfaceTertiaryGrey50,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.stateGreyLowestHover100),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Label Nutrition Facts
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Text(
                      'Nutrition Facts',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.textGreyHighest950),
                    ),
                  ),
                  // List nutrition rows
                  ...nutritions!.map((item) {
                    final splits = item.nutrition.split(RegExp(r'(?<=\D)\s(?=\d)'));
                    final name = splits.first.trim();
                    final value = splits.length > 1 ? splits[1].trim() : '';
                    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              name[0].toUpperCase() + name.substring(1), // Capitalize
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.textGreyHighest950),
                            ),
                          ),
                          Text(
                            value,
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: AppColors.textGreyHigh700),
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
