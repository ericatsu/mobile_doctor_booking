import 'package:flutter/material.dart';

class MealPlanningScreen extends StatefulWidget {
  const MealPlanningScreen({Key? key}) : super(key: key);

  @override
  _MealPlanningScreenState createState() => _MealPlanningScreenState();
}

class _MealPlanningScreenState extends State<MealPlanningScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _weekDays = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Meal Planning',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: _weekDays.map((day) => Tab(text: day)).toList(),
                ),
                SizedBox(
                  height: 500,
                  child: TabBarView(
                    controller: _tabController,
                    children: _weekDays.map((day) {
                      return _buildMealList();
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new meal plan
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildMealList() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildMealCard('Breakfast', '8:00 AM', Icons.wb_sunny),
        _buildMealCard('Lunch', '1:00 PM', Icons.restaurant),
        _buildMealCard('Dinner', '7:00 PM', Icons.nights_stay),
        _buildMealCard('Snacks', 'Any Time', Icons.apple),
      ],
    );
  }

  Widget _buildMealCard(String title, String time, IconData icon) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Hero(
          tag: '$title-icon',
          child: Icon(icon, color: Theme.of(context).primaryColor),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(time),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Navigate to meal detail
        },
      ),
    );
  }
}
