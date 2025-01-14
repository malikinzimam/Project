// import 'dart:io';

// import 'displaylist.dart';
//  List<String> products = [
//         "1: Perfume / RS=850",
//         "2: Watch   / RS=2500",
//         "3: Jacket  / RS=1600"
//       ];

// admainchoice() {
//   while (true) {
//   var choice = stdin.readLineSync();
//     if (choice == "1") {
//       print("ye ha app ki product list:");
//       // List<String> products = [
//       //   "1: Perfume / RS=850",
//       //   "2: Watch   / RS=2500",
//       //   "3: Jacket  / RS=1600"
//       // ];
//       displaylist(products);
//     } else if (choice == "2") {
//       print(
//           "app kia product add karna chata ha (tamam product add karna ka bad 'done' likhein) ");
//       while (true) {
//         List new_list = [];
//         print("Naya product ka naam likhein:");
//         var newProduct = stdin.readLineSync();

//         print("Naya product ki price add kara");
//         var newprice = stdin.readLineSync();

//         if (newProduct != null && newprice != null) {
//           new_list.add("$newProduct / Rs=$newprice");
//           print("Product successfully add ho gaya!");
//           print("Next");
//           break;
//         } else {
//           print("Invalid input. Product add nahi ho saka.");
//           print("try again");
//         }
//       }
//       break;
//     } else {
//       print("invalid choice try again");
//     }
//   }
// }

import 'dart:io';

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

// void displayProductList() {
//   print("\nAvailable Products:");
//   for (var product in products) {
//     print(product);
//   }
// }

void addNewProduct() {
  print("\nAdd New Product (Type 'done' to finish):");
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
        productPrice.isNotEmpty) {
      products.add("$productName / Rs=$productPrice");
      print("Product added successfully!");
    } else {
      print("Invalid input. Please try again.");
    }
  }
}
