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
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
          },
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: const [
              TopWidget(
                hasNotification: true,
                name: 'Beatrice Nettey',
              ),
              SizedBox(height: 20),
              DailyProgressWidget(),
              SizedBox(height: 16),
              HealthyHabitsCarousel(),
              SizedBox(height: 16),
              NutritionCategoryWidget(),
              SizedBox(height: 16),
              CommunityFeedWidget(),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
