import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class Greetings extends StatelessWidget {
  final String type;
  final String greeting;
  const Greetings({super.key, required this.type, required this.greeting});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);

    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.01,
          ),
          SizedBox(
            width: mediaQuery.width * 0.8,
            child: Text(
              greeting,
              style: const TextStyle(
                fontSize: 12.5,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}