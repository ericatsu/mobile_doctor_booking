import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/constants.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SubmitButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Container(
      height: mediaQuery.height * 0.065,
      width: mediaQuery.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Palette.kPrimaryColor,
        border: Border.all(color: Colors.transparent),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
