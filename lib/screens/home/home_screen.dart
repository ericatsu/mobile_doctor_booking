import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/top_widget.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Scaffold(
      body: Column(
        children: [
          TopWidget()
        ],
      ),
    );
  }
}
