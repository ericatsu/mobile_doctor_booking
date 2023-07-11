import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final IconData? sIcon;

  const AuthTextFormField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.validator,
    focusNode,
    required this.hint,
    this.sIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderOnForeground: false,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.black,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(171, 217, 217, 217),
          filled: true,
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          suffixIcon: sIcon != null
              ? Icon(
                  sIcon,
                  size: 18,
                )
              : null,
          suffixIconColor: const Color(0xFF198EB6),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Color.fromARGB(199, 158, 158, 158))),
        ),
        validator: validator,
      ),
    );
  }
}
