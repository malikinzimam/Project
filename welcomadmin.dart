import 'dart:io';

import 'adminchoice(2.1).dart';

welcomeadmin() {
  print("===welcome Admin===");

  while (true) {
    print("enter your password");
    var adminpassword = stdin.readLineSync();
    if (adminpassword == "inzimam123") {
      break;
    } else {
      print("Invalid password try again");
    }
  }
  adminchoice();
}
