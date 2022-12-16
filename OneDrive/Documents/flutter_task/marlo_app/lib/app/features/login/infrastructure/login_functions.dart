// ignore_for_file: import_of_legacy_library_into_null_safe, deprecated_member_use, unused_catch_clause

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginFunctions {
  final email = TextEditingController();
  final password = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  bool obsecure = true;
  bool signUp = false;
  bool logLoad = false;

  void cardFunction(bool change) {
    signUp = change;
    logLoad = false;
  }

  bool obSecureFn() {
    if (obsecure == true) {
      obsecure = false;
    } else {
      obsecure = true;
    }

    return obsecure;
  }

  void disposeCntrl() {
    email.clear();
    password.clear();
  }

  onTabLoginFunction() async {
    logLoad = true;

    if (loginKey.currentState!.validate()) {
      logLoad = true;

      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: email.text.trim(),
              password: password.text.trim(),
            )
            .then((value) {});

        disposeCntrl();
      } on FirebaseAuthException catch (e) {
        logLoad = false;
      }
    }
    logLoad = false;
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
        logLoad = false;
      }
    }
    logLoad = false;
  }
}
