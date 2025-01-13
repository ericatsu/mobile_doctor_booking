import 'package:flutter/material.dart';

class NutritionCategory {
  final String name;
  final IconData icon;
  final Color color;

  const NutritionCategory({
    required this.name,
    required this.icon,
    required this.color,
  });
}

final List<NutritionCategory> nutritionCategories = [
  const NutritionCategory(
    name: "Fruits",
    icon: Icons.apple,
    color: Colors.red,
  ),
  const NutritionCategory(
    name: "Vegetables",
    icon: Icons.eco,
    color: Colors.green,
  ),
  const NutritionCategory(
    name: "Proteins",
    icon: Icons.egg,
    color: Colors.orange,
  ),
  const NutritionCategory(
    name: "Grains",
    icon: Icons.grass,
    color: Colors.brown,
  ),
  const NutritionCategory(
    name: "Dairy",
    icon: Icons.coffee,
    color: Colors.blue,
  ),
];
