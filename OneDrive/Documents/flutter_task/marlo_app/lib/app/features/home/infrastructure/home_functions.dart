import 'package:flutter/material.dart';
import '../../../utils/app_theme/app_themes.dart';
import '../../../utils/app_theme/custom_theme.dart';

class HomeFuctions {
  bool checked = false;

  bool checkBox(BuildContext context) {
    if (checked == true) {
      checked = false;
      CustomTheme.instanceOf(context).changeTheme(MyThemeKeys.LIGHT);
    } else {
      checked = true;
      CustomTheme.instanceOf(context).changeTheme(MyThemeKeys.DARK);
    }
    return checked;
  }
}
