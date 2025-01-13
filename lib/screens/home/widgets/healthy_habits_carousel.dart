import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/model/local_data.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/health_tip_card.dart';

class HealthyHabitsCarousel extends StatefulWidget {
  const HealthyHabitsCarousel({super.key});

  @override
  State<HealthyHabitsCarousel> createState() => _HealthyHabitsCarouselState();
}

class _HealthyHabitsCarouselState extends State<HealthyHabitsCarousel> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: _pageController,
        itemCount: healthTips.length,
        itemBuilder: (context, index) {
          return HealthTipCard(tip: healthTips[index]);
        },
      ),
    );
  }
}
