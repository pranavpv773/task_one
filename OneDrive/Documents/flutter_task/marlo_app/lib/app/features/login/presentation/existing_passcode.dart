import 'dart:async';

import 'package:flutter/material.dart';
import 'package:passcode_screen/circle.dart';
import 'package:passcode_screen/keyboard.dart';
import 'package:passcode_screen/passcode_screen.dart';

class ExistingPasscode extends StatelessWidget {
  ExistingPasscode({super.key});
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  bool isAuthenticated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showLockScreen(
        context,
        opaque: false,
        cancelButton: const Text(
          'Cancel',
          style: TextStyle(fontSize: 16, color: Colors.white),
          semanticsLabel: 'Cancel',
        ),
      ),
    );
  }

  _showLockScreen(
    BuildContext context, {
    required bool opaque,
    CircleUIConfig? circleUIConfig,
    KeyboardUIConfig? keyboardUIConfig,
    required Widget cancelButton,
    List<String>? digits,
  }) {
    Navigator.push(
        context,
        PageRouteBuilder(
          opaque: opaque,
          pageBuilder: (context, animation, secondaryAnimation) =>
              PasscodeScreen(
            title: const Text(
              'Enter App Passcode',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            circleUIConfig: circleUIConfig,
            keyboardUIConfig: keyboardUIConfig,
            passwordEnteredCallback: ((text) {}),
            cancelButton: cancelButton,
            deleteButton: const Text(
              'Delete',
              style: TextStyle(fontSize: 16, color: Colors.white),
              semanticsLabel: 'Delete',
            ),
            shouldTriggerVerification: _verificationNotifier.stream,
            backgroundColor: Colors.black.withOpacity(0.8),
            cancelCallback: _onPasscodeCancelled(context),
            digits: digits,
            passwordDigits: 6,
            //  bottomWidget: _buildPasscodeRestoreButton(),
          ),
        ));
  }

  _onPasscodeEntered(String enteredPasscode) {
    // ignore: unrelated_type_equality_checks
    bool isValid = 123456 == enteredPasscode;
    _verificationNotifier.add(isValid);
  }
}

_onPasscodeCancelled(BuildContext context) {
  Navigator.maybePop(context);
}
