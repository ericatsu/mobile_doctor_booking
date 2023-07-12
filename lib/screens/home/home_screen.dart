import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return   SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            children: [
              const TopWidget(hasNotification: true, name: 'EricAtsu',),
              SizedBox(
                height: mediaQuery.height * 0.04,
              ),
              const SearchWidget(),
              SizedBox(
                height: mediaQuery.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
