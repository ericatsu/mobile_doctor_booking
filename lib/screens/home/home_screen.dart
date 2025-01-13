import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/community_feed_widget.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/daily_progress_widget.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/healthy_habits_carousel.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/nutrition_category_widget.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/top_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  final mediaQuery = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
          },
          child:  CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: mediaQuery, 
                  child: const Column(
                    children: [
                      TopWidget(
                        hasNotification: true,
                        name: 'John Doe',
                      ),
                      SizedBox(height: 20),
                      DailyProgressWidget(),
                      SizedBox(height: 16),
                      HealthyHabitsCarousel(),
                      SizedBox(height: 16),
                      NutritionCategoryWidget(),
                      SizedBox(height: 16),
                      CommunityFeedWidget(),
                      // Add some bottom padding to ensure content doesn't get hidden behind nav bar
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
