import 'dart:io';

void main() {
  print("====welcome to imtiaz mart====");
  print("kia app bhi imtiaz per apna online store bana chata ho press 1");
  print("ye online shoppling karna chata ho press 2");

  var userAnswer = stdin.readLineSync();
  int prodect = 3;
  if (userAnswer == "2") {
    print("to app kia chaiz parch karna chata ho");
    print("filal ka tor per hamara app sirf $prodect prodect ha");
    List producets = [
      "1:perfum / RS=850",
      "2:watch  / RS=2500",
      "3:jacket / RS=1600"
    ];
    for (var product in producets) {
      print(product);
    }
    print("select the option");
    int totalbill = 0;
    while (true) {
      var selectoption = stdin.readLineSync();
      if (selectoption == "1") {
        totalbill += 850;
        print("perfum ");
      } else if (selectoption == "2") {
        totalbill += 2500;
        print("watch ");
      } else if (selectoption == "3") {
        totalbill += 1600;
        print("jacket");
      } else if (selectoption == "done") {
        break;
      } else {
        print("invalid number");
      }
    }
    print("====bill detail===");
    print("Total bill :$totalbill");
  } else if (userAnswer == "1") {
    print("to sab say phala app ko apna account bana hoga");
    print("enter your user name");
    var username = stdin.readLineSync();

    print("enter your email");
    stdin.readLineSync();

    print("create a new password");
    var createpassword = stdin.readLineSync();

    print(
        "ab app ko login karna para ga aghar app ka user name or password same hoga jo app na account bnata wakat dila tha to app successfully login kar jai ga");
    bool condition = true;
    while (condition) {
      print("enter your user name");
      var usernamelogin = stdin.readLineSync();

      print("enter your password");
      var passwordlogin = stdin.readLineSync();

      if (username == usernamelogin && createpassword == passwordlogin) {
        print("loggedin successfuly");
        condition = false;
      } else {
        print("loggedin faild");
        print("try again");
      }
    }

    print(" to ab app apna store ka naam ki rakna chata ho");
    var store_namestdin = stdin.readLineSync();
    print("welcome to $store_namestdin store");

    print("app ka pass kitna prodect ha");
    int prodect_quantity = int.parse(stdin.readLineSync()!);
    // int prodect = prodect_quantity;
    print("app apna product ki detail da");
    print("Elample :- (1:shoes / Rs=jo bhi price ha) ");
    print("jab app ka product pora ho jai to app 'done' likh da");
    List product_list = [];
    while (true) {
      var product_deatile = stdin.readLineSync();
      if (product_deatile != "done" && prodect_quantity <= prodect_quantity) {
        product_list.add(product_deatile);
        print("produce add to list");
      } else if (product_deatile == "done") {
        print("app apni prduct list dekh sakta ha");
        print(product_list);
      } else {
        print("jo app na product quantity batai thi wa pori ho gai ha");
      }
      break;
    }
    print("kia app apni product list dakh na chata ha");
  } else {
    print("invalid input .please restart program");
  }
}
