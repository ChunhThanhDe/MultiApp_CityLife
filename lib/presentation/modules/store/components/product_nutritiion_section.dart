import 'package:flutter/material.dart';
import 'package:sixam_mart_user/domain/models/response/get_product_detail_response.dart';

class ProductNutritionSection extends StatelessWidget {
  final String details;
  final String ingredients;
  final List<Nutrition>? nutritions;

  const ProductNutritionSection({
    super.key,
    required this.details,
    required this.ingredients,
    required this.nutritions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Details
          const Text(
            "Details",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF161A1D),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            details,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF161A1D),
              height: 1.6,
            ),
          ),
          const SizedBox(height: 16),
          // Ingredients
          const Text(
            "Ingredients",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF161A1D),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            ingredients,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF161A1D),
              height: 1.6,
            ),
          ),
          if (nutritions != null && nutritions!.isNotEmpty) ...[
            const SizedBox(height: 20),
            // Nutrition Facts box
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F8F9),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFE8EBEE)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Label Nutrition Facts
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Text(
                      "Nutrition Facts",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF161A1D),
                      ),
                    ),
                  ),
                  // List nutrition rows
                  ...nutritions!.map(
                    (item) {
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
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF161A1D),
                                ),
                              ),
                            ),
                            Text(
                              value,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color(0xFF4A5763),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
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
