import 'package:flutter/material.dart';

class DailyProgressWidget extends StatelessWidget {
  const DailyProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF4CAF50), Color(0xFF81C784)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today's Progress",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.more_horiz, color: Colors.white),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildProgressIndicator(
                icon: Icons.local_drink,
                label: "Water",
                progress: 0.7,
                value: "1.4L",
                goal: "2L",
              ),
              _buildProgressIndicator(
                icon: Icons.restaurant,
                label: "Calories",
                progress: 0.6,
                value: "1200",
                goal: "2000",
              ),
              _buildProgressIndicator(
                icon: Icons.eco,
                label: "Veggies",
                progress: 0.4,
                value: "2",
                goal: "5",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgressIndicator({
    required IconData icon,
    required String label,
    required double progress,
    required String value,
    required String goal,
  }) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: CircularProgressIndicator(
                value: progress,
                backgroundColor: Colors.white.withOpacity(0.3),
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                strokeWidth: 8,
              ),
            ),
            Icon(icon, color: Colors.white, size: 24),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
        Text(
          "$value/$goal",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
