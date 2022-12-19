import 'dart:developer';

import 'package:flag/flag.dart';

class SelectFlag {
  FlagsCode? flagsCode(String fc) {
    //log(fc);
    FlagsCode? val;
    for (int i = 0; i < FlagsCode.values.length; i++) {
      if (fc == FlagsCode.values[i].name) {
        // log(FlagsCode.values[i].name);
        log("-----------------found---------------");
        final valu = FlagsCode.values[i];
        val = valu;
        log(val.toString());
        break;
      } else {
        // log("-----------------Not found---------------");

        val = FlagsCode.DJ;
      }
    }
    return val;
  }
}
