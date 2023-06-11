import 'package:flutter/material.dart';

class socialAdd extends StatelessWidget {
  const socialAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '-or Sign in with-',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(
                  0.6,
                )),
          ),
        ),
      ],
    );
  }
}
