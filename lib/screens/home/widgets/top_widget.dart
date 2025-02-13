import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/constants.dart';

class TopWidget extends StatelessWidget {
  final String name;
  final bool hasNotification;
  const TopWidget(
      {super.key, required this.name, required this.hasNotification});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(26, 158, 158, 158),
            radius: 20,
            backgroundImage: AssetImage(Images.avatar),
          ),
          SizedBox(width: mediaQuery.width * 0.02),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
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
      ),
    );
  }
}
