
import 'dart:io';
import 'onlineshopping(1).dart';
import 'welcomadmin.dart';

void main() {
  print("==== Welcome to Imtiaz Mart ====");
  print("1: kia app adnim ha (Press 1)");
  print("2: Online shopping karein (Press 2)");

  var userAnswer = stdin.readLineSync();

  if (userAnswer == "2") {
    onlineShopping();
  } else if (userAnswer == "1") {
    welcomeadmin();
  } else {
    print("Invalid input. Please restart the program.");
  }
}
