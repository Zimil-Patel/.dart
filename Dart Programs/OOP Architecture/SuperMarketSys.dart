import 'dart:io';

class ProductData {
  List productList = [
    {'productId': 1, "productName": "Milk", "price": 250, 'quantity': 0},
    {'productId': 2, "productName": "Bread", "price": 165, 'quantity': 0},
    {'productId': 3, "productName": "Eggs", "price": 290, 'quantity': 0},
    {'productId': 4, "productName": "Bananas", "price": 65, 'quantity': 0},
    {'productId': 5, "productName": "Chicken", "price": 500, 'quantity': 0},
    {'productId': 6, "productName": "Cereal", "price": 370, 'quantity': 0},
    {'productId': 7, "productName": "Coffee", "price": 580, 'quantity': 0},
  ];

  List customerCart = [];

  List showInventory() {
    int productChoice = 0;
    int productQuantity = 0;
    Map map = {};

    print("\n- - - - - - - - - -");
    print("    Inverntory");
    print("- - - - - - - - - -\n");

    for (int i = 0; i < productList.length; i++) {
      print(
          "Enter ${productList[i]['productId']} for ${productList[i]['productName']} - price(${productList[i]['price']})");
    }

    stdout.write("\nEnter your product choice : ");
    productChoice = int.parse(stdin.readLineSync()!);

    if (productChoice <= 7 && productChoice > 0) {
      map['productId'] = productList[productChoice - 1]['productId'];
      map['productName'] = productList[productChoice - 1]['productName'];
      map['price'] = productList[productChoice - 1]['price'];

      stdout.write("Enter quantity : ");
      productQuantity = int.parse(stdin.readLineSync()!);

      map['quantity'] = productQuantity;

      customerCart.add(map);

      stdout.write("Do you want to add another product ? [y/n] : ");
      String repeat = stdin.readLineSync()!;

      if (repeat == 'y') {
        showInventory();
      }
    } else {
      print("Enter valid option!");
      showInventory();
    }

    return customerCart;
  }

  static getCartData(List list) {
    double finalAmt = 0;
    double discountAmt = 0;
    double discount = 0;

    print("- - - - Customer cart detail - - - -");
    for (int i = 0; i < list.length; i++) {
      finalAmt += ((list[i]['price'] as int) * (list[i]['quantity'] as int));
      print(
          "name : ${list[i]['productName']}, price : ${list[i]['price']}, quantity : ${list[i]['quantity']}");
    }
    if (finalAmt >= 500 && finalAmt <= 1500)
      discount = 10;
    else if (finalAmt > 1500 && finalAmt <= 3500)
      discount = 20;
    else if (finalAmt > 3500 && finalAmt <= 6500)
      discount = 25;
    else if (finalAmt > 6500) discount = 30;

    discountAmt = finalAmt - (finalAmt * (discount / 100));

    print(
        "\nFinal Amount : $finalAmt\nDiscount Amonut : $discountAmt ($discount%)\n");

    print("- - - - - - - - - - - - - - - - - -");
  }
}

class CustomerData extends ProductData {
  late int _customerId;
  late String _customerName;
  late String _customerContact;

  setter() {
    stdout.write("Enter your id : ");
    _customerId = int.parse(stdin.readLineSync()!);
    stdout.write("Enter your name : ");
    _customerName = stdin.readLineSync()!;
    stdout.write("Enter your contact number : ");
    _customerContact = stdin.readLineSync()!;
  }

  getter() {
    print("\nCustomer id : $_customerId");
    print("Customer name : $_customerName");
    print("Customer contact number : $_customerContact");
  }

  getId() => _customerId;
}

class SuperMarket extends CustomerData {
  List customerData = [];

  static int getDash() {
    int choice;

    print("\n- - - - - - - - - - - - - -");
    print("1. for add new customer");
    print("2. for all customer data");
    print("3. for search customer data");
    print("4. for exit");
    print("- - - - - - - - - - - - - -\n");

    //geeting user choice
    stdout.write(">> Enter your choice : ");
    choice = int.parse(stdin.readLineSync()!);

    return choice;
  }
}

void main() {
  int choice;
  choice = SuperMarket.getDash();
  ProductData productData = ProductData();
  List customerList = [];

  while (true) {
    switch (choice) {
      case 1:
        //getting user info
        CustomerData customerData = new CustomerData();
        customerData.setter();
        productData = new ProductData();

        //getting cart details

        Map map = {};
        map['customerInfo'] = customerData;
        List list = productData.showInventory();
        map['cartData'] = list;

        customerList.add(map);

        break;

      case 2:
        for (int i = 0; i < customerList.length; i++) {
          customerList[i]['customerInfo'].getter();
          ProductData.getCartData(customerList[i]['cartData']);
        }
        break;

      case 3:
        int searchId;
        bool found = false;
        print("\n- - - - - - - - - - - - - - -");
        stdout.write("Enter cutomer id for search data : ");
        searchId = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < customerList.length; i++) {
          if (searchId == customerList[i]['customerInfo'].getId()) {
            found = true;
            customerList[i]['customerInfo'].getter();
            ProductData.getCartData(customerList[i]['cartData']);
          }
        }

        if (!found) {
          print("\nNo records found!\n");
        }
        break;

      case 4:
        exit(0);

      default:
        print("Enter valid choice!");
        SuperMarket.getDash();
    }
    choice = SuperMarket.getDash();
  }
}
