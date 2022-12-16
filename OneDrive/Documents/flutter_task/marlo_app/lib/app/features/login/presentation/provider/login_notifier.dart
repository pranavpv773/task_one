import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/routes.dart';

class LoginNotifier with ChangeNotifier {
  final email = TextEditingController();
  final password = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  bool obsecure = false;
  bool signUp = false;
  bool logLoad = false;

  bool obSecureFn() {
    if (obsecure == true) {
      obsecure = false;
      notifyListeners();
    } else {
      obsecure = true;
      notifyListeners();
    }

    return obsecure;
  }

  void disposeCntrl() {
    email.clear();
    password.clear();
  }

  onTabLoginFunction(BuildContext context) async {
    log("---------------reached fn-----------------");
    logLoad = true;
    notifyListeners();
    if (loginKey.currentState!.validate()) {
      logLoad = true;

      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(
          email: email.text.trim(),
          password: password.text.trim(),
        )
            .then((value) {
          Navigator.pushNamed(context, AppRoute.homeRoute);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Success"),
            ),
          );
        });

        disposeCntrl();
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              e.message.toString(),
            ),
          ),
        );
        logLoad = false;
        notifyListeners();
      }
    }
  }

  Future<void> logOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut().then(
          (value) {},
        );
  }

  void onTabSignup() async {
    logLoad = true;

    if (loginKey.currentState!.validate()) {
      logLoad = true;

      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: email.text.trim(),
          password: password.text.trim(),
        )
            .then((value) {
          disposeCntrl();
        });
        // ignore: nullable_type_in_catch_clause
      } on FirebaseAuthException catch (ex) {
        ScaffoldMessenger(
          child: Text(
            ex.message.toString(),
          ),
        );
        logLoad = false;
      }
    }
    logLoad = false;
  }
}
