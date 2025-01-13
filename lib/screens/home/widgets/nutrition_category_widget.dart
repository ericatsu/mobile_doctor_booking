import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/model/nutrition_category.dart';

class NutritionCategoryWidget extends StatelessWidget {
  const NutritionCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Nutrition Categories",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: nutritionCategories
                  .map((category) => _buildCategoryCard(category))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(NutritionCategory category) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: category.color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            category.icon,
            color: category.color,
            size: 30,
          ),
          const SizedBox(height: 8),
          Text(
            category.name,
            style: TextStyle(
              color: category.color,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
