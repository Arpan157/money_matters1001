import 'package:flutter/material.dart';
import 'package:money_matters100/screens/buttons/newAcc.dart';
import 'package:money_matters100/screens/buttons/signin_button.dart';

import 'package:money_matters100/screens/view/hinta.dart';

import 'package:money_matters100/screens/view/passwordHint.dart';

import 'package:firebase_auth/firebase_auth.dart';

// ...

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> signIn(String email, String password) async {
  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // User is signed in
    User? user = userCredential.user;
    // Do something with the user
  } catch (e) {
    // Handle login errors
    print('Login failed: $e');
  }
}

class loginPage extends StatelessWidget {
  loginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool ishiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Moneymatters',
                    style: TextStyle(
                      color: Color(0xff368983),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Text(
                  'Login to your Account',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30,
                ),
                hintA(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                passHint(
                    controller: passwordController,
                    text: 'password',
                    textInputType: TextInputType.text,
                    obscure: ishiddenPassword,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          ishiddenPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ))),
                const SizedBox(
                  height: 35,
                ),
                // signIn(),
                const SizedBox(
                  height: 15,
                ),
                newAcc(),
                // const SizedBox(
                //   height: 15,
                // ),
                // socialAdd(),
              ],
            ),
          ),
        )),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      ishiddenPassword = !ishiddenPassword;
    });
  }
}

void setState(Function() param0) {}
