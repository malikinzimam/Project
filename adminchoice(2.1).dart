import 'dart:io';

import 'addnewproduct.dart';
import 'displaylist(1.1).dart';

List<String> products = [
  "1: Perfume / RS=850",
  "2: Watch   / RS=2500",
  "3: Jacket  / RS=1600"
];

adminchoice() {
  while (true) {
    print("----- Main Menu -----");
    print("1. View Product List");
    print("2. Add New Product");
    print("3. Exit");
    stdout.write("Please select an option: ");
    var choice = stdin.readLineSync();

    if (choice == "1") {
      displaylist(products);
    } else if (choice == "2") {
      addNewProduct();
    } else if (choice == "3") {
      print("Exiting the program. Goodbye!");
      break;
    } else {
      print("Invalid choice. Please try again.");
    }
  }
}
