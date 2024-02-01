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

  factory Fetch.fetch(Map m1) => Fetch(
      isActive: m1['isActive'],
      balance: m1['balance'],
      age: m1['age'],
      eyeColor: m1['eyeColor'],
      name: m1['name'],
      gender: m1['gender'],
      company: m1['company'],
      email: m1['email'],
      phone: m1['phone'],
      address: m1['address']);
}

void main() {
  Fetch f1;
  List<Fetch> objList = List.empty(growable: true);

  //fetching all data
  for (int i = 0; i < bankData.length; i++) {
    f1 = new Fetch.fetch(bankData[i]);
    objList.add(f1);
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
