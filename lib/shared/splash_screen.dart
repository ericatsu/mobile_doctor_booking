import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/screens/auth/signin_screen.dart';
import 'package:mobile_doctor_booking/shared/constants.dart';
import 'exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => Get.to(const SignInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mediaQuery.height * 0.25,
              child: Image.asset(
                Images.splash,
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.025),
            const Text(
              "H E A L T H Y",
              style: TextStyle(
                  color: Palette.kPrimaryColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "H A B I T S",
              style: TextStyle(
                  color: Palette.kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
