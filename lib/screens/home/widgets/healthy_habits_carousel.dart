import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/model/local_data.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/health_tip_card.dart';
import 'package:mobile_doctor_booking/shared/constants.dart';

class HealthyHabitsCarousel extends StatefulWidget {
  const HealthyHabitsCarousel({super.key});

  @override
  State<HealthyHabitsCarousel> createState() => _HealthyHabitsCarouselState();
}

class _HealthyHabitsCarouselState extends State<HealthyHabitsCarousel> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemCount: healthTips.length,
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _pageController,
                builder: (context, child) {
                  double value = 1.0;
                  if (_pageController.position.haveDimensions) {
                    value = _pageController.page! - index;
                    value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                  }
                  return Transform.scale(
                    scale: Curves.easeOut.transform(value),
                    child: child,
                  );
                },
                child: HealthTipCard(tip: healthTips[index]),
              );
            },
          ),
        ),
        const SizedBox(height: 12),
        _buildPageIndicator(),
      ],
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        healthTips.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: _currentPage == index ? 24 : 8,
          decoration: BoxDecoration(
            color: _currentPage == index
                ? Palette.kPrimaryColor
                : Palette.kPrimaryColor.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
