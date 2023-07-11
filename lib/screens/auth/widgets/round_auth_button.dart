import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class RoundAuthButton extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  const RoundAuthButton({super.key, required this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Container(
      height: mediaQuery.height * 0.08,
      width: mediaQuery.width * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
        border: Border.all(color: Palette.kPrimaryColor),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child:  Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Image.asset(image),
            ),
          ),
        ),
      ),
    );
  }
}