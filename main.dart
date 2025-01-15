// import 'dart:io';

// void main() {
//   print("==== Welcome to Imtiaz Mart ====");
//   print("1: Online store banayein (Press 1)");
//   print("2: Online shopping karein (Press 2)");

//   var userAnswer = stdin.readLineSync();

//   if (userAnswer == "2") {
//     print("Hamara store filhal sirf 3 products offer karta hai:");
//     List products = [
//       "1: Perfume / RS=850",
//       "2: Watch   / RS=2500",
//       "3: Jacket  / RS=1600"
//     ];
//     for (var product in products) {
//       print(product);
//     }

//     print("Apni pasandida products ka number select karein (kharidari band karne ke liye 'done' likhein)");
//     int totalBill = 0;

//     while (true) {
//       print("select the option:");
//       var userInput = stdin.readLineSync();

//       if (userInput == "1") {
//         totalBill += 850;
//         print("Perfume added to cart");
//       } else if (userInput == "2") {
//         totalBill += 2500;
//         print("Watch added to cart");
//       } else if (userInput == "3") {
//         totalBill += 1600;
//         print("Jacket added to cart");
//       } else if (userInput?.toLowerCase() == "done") {
//         break;
//       } else {
//         print("Invalid input. Please select a valid option.");
//       }
//     }

//     print("==== Shopping Summary ====");
//     print("Total Bill: RS$totalBill");
//     print("Thank you for shopping with Imtiaz Mart!");

//   } else if (userAnswer == "1") {
//     print("Feature under construction. Stay tuned!");
//   } else {
//     print("Invalid input. Please restart the program.");
//   }
// }

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
