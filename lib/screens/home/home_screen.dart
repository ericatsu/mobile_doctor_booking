import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const TopWidget(hasNotification: true, name: 'EricAtsu'),
            SizedBox(
              height: mediaQuery.height * 0.04,
            ),
            const SearchWidget(),
            SizedBox(
              height: mediaQuery.height * 0.03,
            ),
            SizedBox(
              height: mediaQuery.height * 0.28,
              width: mediaQuery.width * 0.85,
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
                          _currentIndex = index;
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
            ),
          ],
        ),
      ),
    );
  }
}
