import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final bool isObcureText;
  final TextEditingController controller;
  const AuthTextField({
    super.key,
    required this.hintText,
    this.isObcureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
      obscureText: isObcureText,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Missing ${hintText}';
        }
        return null;
      },
    );
  }
}
