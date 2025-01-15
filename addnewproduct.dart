import 'dart:io';

import 'displaylist(1.1).dart';

List<String> products = [
  "1: Perfume / RS=850",
  "2: Watch   / RS=2500",
  "3: Jacket  / RS=1600"
];

void addNewProduct() {
  print("Add New Product (Type 'done' to finish):");
  while (true) {
    stdout.write("Enter product name: ");
    var productName = stdin.readLineSync();

    if (productName == "done") {
      print("Finished adding products.");
      break;
    }

    stdout.write("Enter product price: ");
    var productPrice = stdin.readLineSync();

    if (productName != null &&
        productPrice != null &&
        productName.isNotEmpty &&
        productPrice.isNotEmpty &&
        int.tryParse(productPrice) != null) {
      products.add("$productName / Rs=$productPrice");
      print("Product added successfully!");
      print("Updated Products List:");
      displaylist(products);
    } else {
      print("Invalid input. Please try again.");
    }
  }
}
