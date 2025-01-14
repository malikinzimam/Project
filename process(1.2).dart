import 'dart:io';

int processShopping() {
  int totalBill = 0;

  while (true) {
    print("Select the option:");
    var userInput = stdin.readLineSync();

    if (userInput == "1") {
      totalBill += 850;
      print("Perfume added to cart");
    } else if (userInput == "2") {
      totalBill += 2500;
      print("Watch added to cart");
    } else if (userInput == "3") {
      totalBill += 1600;
      print("Jacket added to cart");
    } else if (userInput?.toLowerCase() == "done") {
      break;
    } else {
      print("Invalid input. Please select a valid option.");
    }
  }

  return totalBill; 
}