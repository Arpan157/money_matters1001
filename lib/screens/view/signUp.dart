import 'package:flutter/material.dart';
import 'package:money_matters100/screens/buttons/signUp_button.dart';
import 'package:money_matters100/screens/view/hinta.dart';
import 'package:money_matters100/screens/view/name.dart';
import 'package:money_matters100/screens/view/passwordHint.dart';

class signUp extends StatelessWidget {
  signUp({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
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
                  'Create your Account',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                name(
                    controller: nameController,
                    text: 'username',
                    textInputType: TextInputType.text,
                    obscure: false,
                    prefixIcon: Icon(Icons.person)),
                const SizedBox(
                  height: 20,
                ),
                hintA(
                    controller: emailController,
                    text: 'Email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress,
                    prefixIcon: Icon(
                      Icons.email,
                    )),
                const SizedBox(
                  height: 20,
                ),
                passHint(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                passHint(
                  controller: passwordController,
                  text: 'Confirm Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                      )),
                ),
                const SizedBox(
                  height: 35,
                ),
                signupBtn(),

                // const SizedBox(
                //   height: 35,
                // ),
                // signIn(),
                // const SizedBox(
                //   height: 15,
                // ),
                // newAcc(),
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
}
