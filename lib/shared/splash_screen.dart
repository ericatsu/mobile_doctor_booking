import 'dart:async';
import 'package:flutter/material.dart';
import 'exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.to(const SignInPage()));
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
                )),
            SizedBox(height: mediaQuery.height * 0.025),
            const Text(
              "D O C T O R",
              style: TextStyle(
                  color: Palette.kPrimaryColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "C H A N N E L I N G",
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
