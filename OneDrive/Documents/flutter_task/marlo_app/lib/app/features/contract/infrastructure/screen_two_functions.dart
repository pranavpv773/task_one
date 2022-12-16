import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_two/widgets/bottom_sheet.dart';

class InviteFuctions {
  static final emailCntrl = TextEditingController();
  static final roleCntrl = TextEditingController();
  static final formKey = GlobalKey<FormState>();
  static List roles = ["Admin", "Approver", "Preparer", "Viewer", "Employee"];

  onTabCntrler(int index) {
    roleCntrl.text = roles[index];
  }

  settingModalBottomSheet(context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      builder: (BuildContext ctx) {
        return const BottomSheetWidget();
      },
    );
  }

  bool isValidEmail(String input) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(input);
  }
}
