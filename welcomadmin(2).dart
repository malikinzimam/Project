import 'dart:io';

import 'adminchoice(2.1).dart';

welcomeadmin() {
  print("===welcome Admin===");

  while (true) {
    print("enter your password");
    var adinmpassword = stdin.readLineSync();
    if (adinmpassword == "inzimam123") {
      break;
    } else {
      print("Invalid password try again");
    }
  }
  adminchoice();
}
