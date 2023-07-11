import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/screens/auth/widgets/greetings.dart';
import 'package:mobile_doctor_booking/screens/auth/widgets/round_auth_button.dart';
import 'package:mobile_doctor_booking/screens/auth/widgets/submit_button.dart';

import '../../shared/exports.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _emailController.text.trim(),
  //     password: _passwordController.text.trim());
  // }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                    color: Palette.kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: mediaQuery.height * 0.03,
              ),
              const Greetings(
                greeting:
                    'Korem ipsum dolor sit amet, consectetur adipiscing elit.',
                type: 'Sign In',
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.01,
                      ),
                      AuthTextFormField(
                        controller: _emailController,
                        validator: (value) => Validator.validateEmail(
                          email: value,
                        ),
                        hint: 'Enter Your Email',
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.03,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.01,
                      ),
                      AuthTextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        validator: (value) => Validator.validatePassword(
                          password: value,
                        ),
                        hint: 'Enter Your Password',
                        sIcon: CupertinoIcons.eye_slash,
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.01,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.05,
                      ),
                      SubmitButton(onPressed: () {}, text: 'Sign In'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.01,
              ),
              const Text(
                'OR',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.01,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: mediaQuery.height * 0.06,
                  width: mediaQuery.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundAuthButton(
                        image: Images.google,
                        onTap: () {},
                      ),
                      SizedBox(
                        width: mediaQuery.width * 0.04,
                      ),
                      RoundAuthButton(
                        image: Images.apple,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.014,
              ),
              InUpWidget(
                link: 'Sign Up',
                normal: 'Don’t have an account',
                onTap: () {
                  Get.to(
                    const SignUpPage(),
                  );
                },
              ),
              SizedBox(
                height: mediaQuery.height * 0.018,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
