import 'bank.dart';

class Fetch {
  bool? isActive;
  String? balance;
  int? age;
  String? eyeColor;
  String? name;
  String? gender;
  String? company;
  String? email;
  String? phone;
  String? address;

  Fetch({
    bool? this.isActive,
    String? this.balance,
    int? this.age,
    String? this.eyeColor,
    String? this.name,
    String? this.gender,
    String? this.company,
    String? this.email,
    String? this.phone,
    String? this.address,
  });
}

void main() {
  List<Fetch> objList = [];

  for (int i = 0; i < bankData.length; i++) {
    Fetch f = new Fetch(
        isActive: bankData[i]['isActive'],
        balance: bankData[i]['balance'],
        age: bankData[i]['age'],
        eyeColor: bankData[i]['eyeColor'],
        name: bankData[i]['name'],
        gender: bankData[i]['gender'],
        company: bankData[i]['company'],
        email: bankData[i]['email'],
        phone: bankData[i]['phone'],
        address: bankData[i]['address']);
    objList.add(f);
  }

  //printing all data
  for (int i = 0; i < objList.length; i++) {
    print("\n>> - - - Data : ${i + 1} - - - <<");
    print("isactive : ${objList[i].isActive}");
    print("balance : ${objList[i].balance}");
    print("age : ${objList[i].age}");
    print("Eye color : ${objList[i].eyeColor}");
    print("Name : ${objList[i].name}");
    print("Gender : ${objList[i].gender}");
    print("company : ${objList[i].company}");
    print("email : ${objList[i].email}");
    print("phone : ${objList[i].phone}");
    print("address : ${objList[i].address}");
  }
}
