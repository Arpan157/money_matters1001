import 'package:flutter/material.dart';
import 'package:money_matters100/screens/view/signUp.dart';

class newAcc extends StatelessWidget {
  const newAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return signUp();
                  print('signing up');
                },
              ),
            );
          },
          child: Text(
            'Sign up',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
