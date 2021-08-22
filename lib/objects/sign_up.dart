import 'package:flutter/material.dart';
import 'package:timehub_companion/objects/styles.dart' as styles;
import 'package:timehub_companion/objects/widgets.dart';
import 'package:timehub_companion/objects/textcontrollers.dart';
import 'package:timehub_companion/services/supabase.dart';

final TextEditingController confirmPasswdController = TextEditingController();

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.grey,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Text(
              'timehub\ncompanion',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: styles.white),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 100, 25, 0),
            height: 500,
            child: Card(
              color: styles.white,
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StandardTextField(
                      controller: signUpEmailController,
                      hint: 'E-Mail',
                      inputType: TextInputType.emailAddress,
                    ),
                    StandardTextField(
                      controller: signUpPasswdController,
                      hint: 'Password',
                      hidden: true,
                    ),
                    StandardTextField(
                      controller: confirmPasswdController,
                      hint: 'Confirm your Password',
                      hidden: true,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (confirmPasswdController.text ==
                            signUpPasswdController.text) {
                          signUp(signUpEmailController.text,
                              signUpPasswdController.text);
                          print('PASSWORDS MATCH');
                        } else {
                          print('PASSWORDS DO NOT MATCH');
                        }
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: styles.grey),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: styles.green, onPrimary: styles.green),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
                margin: EdgeInsets.only(top: 50),
                child: GestureDetector(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: styles.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              )
        ],
      ),
    );
  }
}
