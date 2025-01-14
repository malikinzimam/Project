import 'displaylist(1.1).dart';
import 'process(1.2).dart';
void onlineShopping() {
  print("Hamara store filhal sirf 3 products offer karta hai:");
  List<String> products = [
    "1: Perfume / RS=850",
    "2: Watch   / RS=2500",
    "3: Jacket  / RS=1600"
  ];
  displaylist(products);

  print("Apni pasandida products ka number select karein (kharidari band karne ke liye 'done' likhein)");
  int totalBill = processShopping();

  print("==== Shopping Summary ====");
  print("Total Bill: RS=$totalBill");
  print("Thank you for shopping with Imtiaz Mart!");
}