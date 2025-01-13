import 'package:flutter/material.dart';

class HealthTip {
  final String title;
  final String description;
  final String imageAsset;
  final Color backgroundColor;

  const HealthTip({
    required this.title,
    required this.description,
    required this.imageAsset,
    required this.backgroundColor,
  });
}

final List<HealthTip> healthTips = [
  HealthTip(
    title: "Eat More Colorful Vegetables",
    description:
        "Include at least 5 different colored vegetables in your daily diet for optimal nutrition.",
    imageAsset: "assets/images/doc3.png",
    backgroundColor: Colors.green.shade50,
  ),
  HealthTip(
    title: "Stay Hydrated",
    description:
        "Drink at least 8 glasses of water daily to maintain good health.",
    imageAsset: "assets/images/doc3.png",
    backgroundColor: Colors.blue.shade50,
  ),
  HealthTip(
    title: "Balanced Meals",
    description:
        "Make sure each meal contains proteins, carbs, and healthy fats.",
    imageAsset: "assets/images/doc3.png",
    backgroundColor: Colors.orange.shade50,
  ),
];
