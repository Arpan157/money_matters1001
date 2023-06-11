import 'package:flutter/material.dart';

class name extends StatelessWidget {
  const name({
    super.key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    required this.prefixIcon,
  });
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 7),
          ]),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
            hintText: text,
            prefixIcon: Icon(Icons.person),
            border: InputBorder.none,
            hintStyle: TextStyle(height: 1)),
      ),
    );
  }
}
