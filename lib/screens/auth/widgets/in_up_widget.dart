import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/constants.dart';

class InUpWidget extends StatelessWidget {
  final String normal;
  final String link;
  final VoidCallback onTap;
  const InUpWidget(
      {super.key,
      required this.normal,
      required this.link,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$normal? ',
        style: const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w400,
            color: Palette.kPrimaryColor),
        children: [
          TextSpan(
              text: link,
              style: const TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.bold,
                  color: Palette.kPrimaryColor),
              recognizer: TapGestureRecognizer()..onTap = onTap),
        ],
      ),
    );
  }
}
