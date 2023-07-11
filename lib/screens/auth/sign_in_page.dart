import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/screens/auth/widgets/greetings.dart';

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
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                    color: Palette.kPrimaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: mediaQuery.height * 0.05,
              ),
              const Greetings(
                greeting: 'Korem ipsum dolor sit amet, consectetur adipiscing elit.',
                type: 'Sign In',
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 16.0),
                      AuthTextFormField(
                        controller: _emailController,
                        validator: (value) => Validator.validateEmail(
                          email: value,
                        ),
                        hint: 'Enter Your Email',
                      ),
                      const SizedBox(height: 16.0),
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
                        height: mediaQuery.height * 0.045,
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.06,
                        width: mediaQuery.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // BoxButton(
                            //   image: Images.rightarrow,
                            //   onTap: (){
                            //     // signIn();
                            //   },
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.1,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Or sign up with',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.025,
              ),
              InUpWidget(
                link: 'Sign Up',
                normal: 'No account',
                onTap: () {
                  Get.to(
                    const SignUpPage(),
                  );
                },
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                    height: mediaQuery.height * 0.06,
                    width: mediaQuery.width * 0.8,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // BoxButton(
                          //   image: Images.google,
                          //   onTap: () {},
                          // ),
                          // BoxButton(
                          //   image: Images.twitter,
                          //   onTap: () {},
                          // ),
                          // BoxButton(
                          //   image: Images.apple,
                          //   onTap: () {},
                          // ),
                          // BoxButton(
                          //   image: Images.github,
                          //   onTap: () {},
                          // ),
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
