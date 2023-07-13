import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return SizedBox(
      height: mediaQuery.height * 0.28,
      width: mediaQuery.width * 0.90,
      child: Column(
        children: [
          SizedBox(
            height: mediaQuery.height * 0.25,
            width: mediaQuery.width * 0.86,
            child: PageView.builder(
              controller: _pageController,
              itemCount: localItems.length,
              onPageChanged: (index) {
                setState(() {
                });
              },
              itemBuilder: (context, index) {
                return CarouselCard(
                  cLocalData: localItems[index],
                );
              },
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: localItems.length,
              effect: const WormEffect(
                dotWidth: 10,
                dotHeight: 10,
                dotColor: Colors.grey,
                activeDotColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
