import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/constants.dart';

class DailyProgressWidget extends StatefulWidget {
  const DailyProgressWidget({super.key});

  @override
  State<DailyProgressWidget> createState() => _DailyProgressWidgetState();
}

class _DailyProgressWidgetState extends State<DailyProgressWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _progressAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Palette.kPrimaryColor,
            Palette.kPrimaryColor.withValues(alpha: 0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Palette.kPrimaryColor.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Today's Progress",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              _buildStreakBadge(),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildProgressIndicator(
                "Water",
                0.7,
                "1.4L",
                "2L",
                Icons.water_drop_rounded,
                _progressAnimation,
              ),
              _buildProgressIndicator(
                "Calories",
                0.6,
                "1200",
                "2000",
                Icons.local_fire_department_rounded,
                _progressAnimation,
              ),
              _buildProgressIndicator(
                "Steps",
                0.8,
                "8k",
                "10k",
                Icons.directions_walk_rounded,
                _progressAnimation,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStreakBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            Icons.local_fire_department_rounded,
            color: Colors.orange.shade400,
            size: 18,
          ),
          const SizedBox(width: 4),
          const Text(
            "7 Day Streak!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressIndicator(
    String label,
    double progress,
    String current,
    String goal,
    IconData icon,
    Animation<double> animation,
  ) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 50,
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  return CircularProgressIndicator(
                    value: progress * animation.value,
                    backgroundColor: Colors.white.withValues(alpha: 0.2),
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.white),
                    strokeWidth: 8,
                  );
                },
              ),
              Center(
                child: Icon(icon, color: Colors.white, size: 30),
              ),
            ],
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "$current/$goal",
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.8),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
