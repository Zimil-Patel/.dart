class UsersModel {
  // KEY DATATYPES
  int total, skip, limit;
  List<Users> userList;
  // CONSTRUCTOR
  UsersModel({
    required this.total,
    required this.skip,
    required this.limit,
    required this.userList,
  });
  // FACTORY CONSTRUCTOR
  factory UsersModel.fromJson(Map map) => UsersModel(
        total: map['total'],
        skip: map['skip'],
        limit: map['limit'],
        userList: (map['users'] as List).map((e) => Users.fromJson(e)).toList(),
      );
}

class Users {
  // KEY DATATYPES
  int id, age;
  double height, weight;
  String firstName, lastName, maidenName, gender;
  String email, phone, username, password, birthDate, image;
  String bloodGroup, eyeColor;
  String ip, macAddress, university, ein, ssn, userAgent, role;
  Hair hair;
  Address address;
  Bank bank;
  Company company;
  Crypto crypto;

  // CONSTRUCTOR
  Users({
    required this.id,
    required this.age,
    required this.height,
    required this.weight,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.eyeColor,
    required this.ip,
    required this.macAddress,
    required this.university,
    required this.ein,
    required this.ssn,
    required this.userAgent,
    required this.role,
    required this.hair,
    required this.address,
    required this.bank,
    required this.company,
    required this.crypto,
  });

  // FACTORY CONSTRUCTOR
  factory Users.fromJson(Map map) => Users(
        id: map['id'],
        age: map['age'],
        height: map['height'],
        weight: map['weight'].toDouble(),
        firstName: map['firstName'],
        lastName: map['lastName'],
        maidenName: map['maidenName'],
        gender: map['gender'],
        email: map['email'],
        phone: map['phone'],
        username: map['username'],
        password: map['password'],
        birthDate: map['birthDate'],
        image: map['image'],
        bloodGroup: map['bloodGroup'],
        eyeColor: map['eyeColor'],
        ip: map['ip'],
        macAddress: map['macAddress'],
        university: map['university'],
        ein: map['ein'],
        ssn: map['ssn'],
        userAgent: map['userAgent'],
        role: map['role'],
        hair: Hair.fromJson(map['hair']),
        address: Address.fromJson(map['address']),
        bank: Bank.fromJson(map['bank']),
        company: Company.fromJson(map['company']),
        crypto: Crypto.fromJson(map['crypto']),
      );
}

class Hair {
  // KEY DATATYPES
  String color, type;
  // CONSTRUCTOR
  Hair({
    required this.color,
    required this.type,
  });
  // FACTORY CONSTRUCTOR
  factory Hair.fromJson(Map map) => Hair(
        color: map['color'],
        type: map['type'],
      );
}

class Address {
  // KEY DATATYPES
  String address, city, state, stateCode, postalCode, country;
  Coordinates coordinates;
  // CONSTRUCTOR
  Address({
    required this.address,
    required this.city,
    required this.state,
    required this.stateCode,
    required this.postalCode,
    required this.coordinates,
    required this.country,
  });
  // FACTORY CONSTRUCTOR
  factory Address.fromJson(Map map) => Address(
        address: map['address'],
        city: map['city'],
        state: map['state'],
        stateCode: map['stateCode'],
        postalCode: map['postalCode'],
        coordinates: Coordinates.fromJson(map['coordinates']),
        country: map['country'],
      );
}

class Coordinates {
  // KEY DATATYPES
  double lat, lng;
  // CONSTRUCTOR
  Coordinates({
    required this.lat,
    required this.lng,
  });
  // FACTORY CONSTRUCTOR
  factory Coordinates.fromJson(Map map) => Coordinates(
        lat: map['lat'],
        lng: map['lng'],
      );
}

class Bank {
  // KEY DATATYPES
  String cardExpire, cardNumber, cardType, currency, iban;
  // CONSTRUCTOR
  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });
  // FACTORY CONSTRUCTOR
  factory Bank.fromJson(Map map) => Bank(
        cardExpire: map['cardExpire'],
        cardNumber: map['cardNumber'],
        cardType: map['cardType'],
        currency: map['currency'],
        iban: map['iban'],
      );
}

class Company {
  // KEY DATATYPES
  String department, name, title;
  Address address;
  // CONSTRUCTOR
  Company({
    required this.department,
    required this.name,
    required this.title,
    required this.address,
  });
  // FACTORY CONSTRUCTOR
  factory Company.fromJson(Map map) => Company(
        department: map['department'],
        name: map['name'],
        title: map['title'],
        address: Address.fromJson(map['address']),
      );
}

class Crypto {
  // KEY DATATYPES
  String coin, wallet, network;
  // CONSTRUCTOR
  Crypto({
    required this.coin,
    required this.wallet,
    required this.network,
  });
  // FACTORY CONSTRUCTOR
  factory Crypto.fromJson(Map map) => Crypto(
        coin: map['coin'],
        wallet: map['wallet'],
        network: map['network'],
      );
}
