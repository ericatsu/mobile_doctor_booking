import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class TopWidget extends StatelessWidget {
  final String name;
  final bool hasNotification;
  const TopWidget(
      {super.key, required this.name, required this.hasNotification});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Color.fromARGB(26, 158, 158, 158),
          radius: 20,
          backgroundImage: AssetImage(Images.splash),
        ),
        SizedBox(width: mediaQuery.width * 0.02),
        Expanded(
          child: Text(
            name,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        if (hasNotification)
          Stack(
            children: [
              const Icon(Icons.notifications_outlined),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
