import 'package:flutter/material.dart';
import 'package:money_matters100/screens/view/loginPage.dart';

class passHint extends StatelessWidget {
  passHint({
    super.key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    required this.prefixIcon,
    required this.suffixIcon,
  });
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final prefixIcon;
  final suffixIcon;
  bool ishiddenPassword = true;

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
        obscureText: ishiddenPassword,
        decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.lock,
            ),
            suffixIcon: InkWell(
                onTap: _togglePasswordView,
                child: Icon(
                  ishiddenPassword ? Icons.visibility : Icons.visibility_off,
                )),
            hintStyle: TextStyle(height: 1)),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      ishiddenPassword = !ishiddenPassword;
    });
  }
}
