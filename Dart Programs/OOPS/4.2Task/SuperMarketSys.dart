/*
3. WAP to make Supermarket Billing System.
Requirements:
(A) Verify User Id And Password
(B) User Input Item Number , Item Name , Quantity , Tax , Discount.
(C) Display All Record In Ascending order (by item Number)
*/

import 'dart:io';

class Market {
  int? itemNumber, price, discount;
  String? item_name;
  double? tax;
  static int choice = 0;

  static void getDash() {
    print("\n - - - - - - - - - - - - - - - - ");
    print("    1. Add Item Details");
    print("    2. View all Item Details");
    print("    3. exit");
    print("- - - - - - - - - - - - - - - - - \n");

    stdout.write("Enter your choice[1/2/3] : ");
    choice = int.parse(stdin.readLineSync()!);
  }

  setter() {
    stdout.write("\nenter the  Item Number : ");
    itemNumber = int.parse(stdin.readLineSync()!);
    stdout.write("enter the  Item Name : ");
    item_name = stdin.readLineSync()!;
    stdout.write("enter the  Item Price : ");
    price = int.parse(stdin.readLineSync()!);
    stdout.write("enter the  Item Discount : ");
    discount = int.parse(stdin.readLineSync()!);
    stdout.write("enter the  Item Tax : ");
    tax = double.parse(stdin.readLineSync()!);
  }

  getter() {
    print("\nItem number : $itemNumber");
    print("Item name : $item_name");
    print("Item price : $price");
    print("Item discount : $discount");
    print("Item tax : $tax");
  }

  int? getItemNumber() => itemNumber;

  static void getItemInAscendingOrder(List<Market> item) {
    print("> - - All Items Details in Ascending order - - - <");

    for (int i = 0; i < item.length - 1; i++) {
      for (int j = i + 1; j < item.length - 1; j++) {
        print(item[i].getItemNumber());
        if (item[i].getItemNumber()! > item[j].getItemNumber()!) {
          Market market = new Market();
          market = item[i];
          item[i] = item[j];
          item[j] = market;
        }
      }
    }

    item.forEach((element) {
      element.getter();
    });
  }
}

void main() {
  List<Market> item = List.empty(growable: true);
  Market market = Market();
  bool loginStatus = false;

  String? userName = "", password = "";

  do {
    stdout.write("\nEnter userName : ");
    userName = stdin.readLineSync()!;
    stdout.write("Enter password : ");
    password = stdin.readLineSync()!;
    if (userName == "admin" && password == "1234") {
      loginStatus = true;
      print("\n>> - - - Login Successfull - - - <<");
    } else
      print("\n>> - - - Invalid username or password - - - <<");
  } while (!loginStatus);

  if (loginStatus) {
    Market.getDash();
    while (Market.choice != 4) {
      switch (Market.choice) {
        case 1:
          {
            market.setter();
            print("\n>> Added successfully <<\n");
            item.add(market);
            Market.getDash();
          }
          break;
        case 2:
          {
            Market.getItemInAscendingOrder(item);
            Market.getDash();
          }
          break;
        case 3:
          exit(0);
        default:
          {
            print("\n>> Enter valid choice <<\n");
            Market.getDash();
          }
      }
    }
  }
}
